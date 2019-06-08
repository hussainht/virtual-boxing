function [ output_args ] = game(difficulty)
%RING IMAGE
fig = figure;
ring_image = imread('images\\ring.png');            %Ring image imported.
imshow(ring_image);                         %Display the image.

hold on;


%SHOW OPPONENT
[im, ~, alpha] = imread('images\\opponent.png');
boxer = image(im);
set(boxer, 'AlphaData', alpha,'YData',[180 180],'XData',[120 120]);

%SHOW NAME AND COUNTRY OF CURRENT BOXER
%  CSV File is used as names of all boxers can be simply chnaged by editing
%  the CSV file.
fileID = fopen('BoxingChamps.csv');         %Boxer Name and Country imported from BoxingChamps.csv fle
opponent_names = textscan(fileID,'%s %s %s %s','Delimiter',',');

opp_name = opponent_names{1};               %First column of the CSV file contains names.
country = opponent_names{2};                %Second column of the CSV file contains country.


name_disp = text(50,70,opp_name(difficulty),'FontSize',40);     %Display the boxer name.
country_disp = text(50,130,country(difficulty),'FontSize',40);  %Display the boxer country.


pause(1)                %Show the country and boxer name for one second.

%Clear the image (except for the main on)
set(name_disp,'Visible','off');
set(country_disp,'Visible','off');
set(boxer,'Visible','off')


%Display MATCH STARTS IN text.
match_in = text(50,70,'MATCH STARTS IN:','FontSize',50);

%This will create a timer, that counts down from 3 to 0.
for i=1:4
    time_disp = text(300,270,num2str(4-i),'FontSize',200);
    set(time_disp,'Visible','on')

    [y,Fs] = audioread('audio\\clock.mp3');
    clock_sound = audioplayer(y,Fs);
    play(clock_sound)

    pause(1)
    set(time_disp,'Visible','off')
end
clear clock_sound

set(match_in,'Visible','off')

%Plays the sound that plays right before the match starts.
[y,Fs] = audioread('audio\\Fight!.mp3');
fight_sound = audioplayer(y,Fs);
play(fight_sound)

fight_disp = text(180,100,'FIGHT!','FontSize',90);
pause(1)
set(fight_disp,'Visible','off');
pause(0.5)

%Turn the boxer image back to visible
set(boxer,'Visible','on');

%Display both gloves.
[im, map, alpha] = imread('images\\RightGloves.png');
rightglove = image(im);
set(rightglove, 'AlphaData', alpha,'YData',[330 330],'XData',[350 350]);


[im, map, alpha] = imread('images\\LeftGloves.png');
leftglove = image(im);
set(leftglove, 'AlphaData', alpha,'YData',[330 330],'XData',[30 30]);

%HEALTH BAR OF THE USER.
hp =300;
health_me = rectangle('Position',[20 10 hp 20],'FaceColor','r');
%HEALTH BAR OF THE COMPUTER.
comp_hp = 300;
health_comp = rectangle('Position',[360 10 comp_hp 20],'FaceColor','b');    %Set up healt bar using full health

for i=1:10000                   %loop runs for a large amount of time such that one user loses.
    pause(1)
    damage_done = attack();     %Check if the user attacked.

    if damage_done>0 && comp_hp >= damage_done    %If damage done is greater than comp_hp game will crash as health bar is a rectangle.
        set(rightglove,'Visible','off')           %Turn gloves off to show attack animation.
        attack_anim                               %Shows attack animation
        comp_hp = comp_hp - damage_done;          %Update comp hp.
        set(health_comp,'Position',[360 10 comp_hp 20])     %Update health bar to hp.
        set(boxer,'Visible','off')                          %Boxer image hidden to show boxer attacked image.
        [im, ~, alpha] = imread('images\\opponenthit.png');
        boxerhit = image(im);
        set(boxerhit, 'AlphaData', alpha,'YData',[110 110],'XData',[120 120]);
        punch_sound                               %Play punch sound as computer attacked.
        pause(0.5)
        set(boxerhit,'Visible','off')
        set(boxer,'Visible','on')                   %Set boxer back to normal. I.e Visible.
        set(rightglove,'Visible','on')
    elseif comp_hp <= damage_done
        close all                                   %Computer has run out of HP.
        imshow(imread('images\\win.jpg'));
        win_sound                                   %Play winning sound.
        pause(1)                                    
        close all;
        break
    else                                 %Computer not attacked. Shows grinning opponent for 0.5 seconds.
        set(boxer,'Visible','off')           
        [im, ~, alpha] = imread('images\\you_missed.png');
        boxermiss = image(im);
        set(boxermiss, 'AlphaData', alpha,'YData',[110 110],'XData',[120 120]);
        pause(0.5)
        set(boxermiss,'Visible','off')
        set(boxer,'Visible','on')
    end

    direction = rand;   %Direction determined randomly.

    %Direction changed by setting the image's XData.
    if direction<0.333
        set(boxer,'XData',[320 320]);
    elseif direction<0.667
        set(boxer,'XData',[-80 -80]);
    else
        set(boxer,'XData',[120 120]);
    end

    %% ATTACK
    anim_pos = get(boxer,'XData');    %XData taken to use for attacking animation.

    hit = randi([0 15]);
    if hit>12-difficulty             %Harder difficulty means opponents are more likely to attack.
        hp = hp - 10*difficulty;
        anim(anim_pos)
        punch_sound                     %Play sound as computer attacked
        if hp >= 10*difficulty
            set(health_me,'Position',[20 10 hp 20]);        %Update user health
        else
            close all                                           %Close current match window and show you lost image. Also play losing sound.
            imshow(imread('images\\losee.jpg'));
            lose_sound
            pause(1)
            close all;
            break
        end

    end
    pause(1)
end
end



