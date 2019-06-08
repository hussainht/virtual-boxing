function [damage_done] = attack()

mob = mobiledev;            %Mobiledev object created.

mob.AccelerationSensorEnabled = 1;      %  Accelerometer enabled.
mob.Logging = 1;                        %  Enable logging
accel = [];                             %This will contain acceleration data.

[im, ~, alpha] = imread('images\\phone_vibrate.png');   %Show phone vibrate image so as to prompt the user to attack.
phone = image(im);
set(phone, 'AlphaData', alpha,'YData',[120 120],'XData',[600 600]);
pause(0.2)
for i=1:10
    a = mob.acceleration;
    accel = [accel a];
    pause(0.25)
end
set(phone,'Visible','off')              %Turn phone sign off when matlab has gathered data.             
% TEST RESULTS
% TEST CONDUCTED FOR AVERAGE VALUES OF ACCELERATION ALONG THREE AXIS. TEST
% CONDUCTED USING 291 values.
% FOR LOOP COLLECTED DATA BY RUNNING 100 TIMES WITH 0.5 SEC PAUSE.
% FORMULA USED TO TEST ACCELERATION
% x_mean = mean(accel(1:3:length(accel)));
% y_mean = mean(accel(2:3:length(accel)));
% z_mean = mean(accel(3:3:length(accel)));
% A stationary smartphone gives the following ranges on average.
% AXIS      | AVG ACCEL WHEN STATIONARY |  AVG ACCEL IN HAND
%  X        |   0.0001                  |  -0.1956
%  Y        |   0.0993                  |  1.8933
%  Z        |   9.8099                  |  9.5956

%RESULTS SHOW THAT THESE THRESHOLDS COULD BE USED TO DETERMINE ATTACK.

% x>3
% y>4
% z >12 or <6

max_posx = max(accel(1:3:length(accel)));       %Takes maximum value in the array
min_posx = min(accel(1:3:length(accel)));       %Takes minimum value from the array
max_x = max([max_posx -1*min_posx]);            %Compares the min and max values and takes the higher one. (Sets min to positive as damage will be a positive number)

max_posy = max(accel(2:3:length(accel)));       %Takes maximum value in the array
min_posy = min(accel(2:3:length(accel)));       %Takes minimum value from the array
max_y = max([max_posy -1*min_posy]);            %Compares the min and max values and takes the higher one. (Sets min to positive as damage will be a positive number)



max_posz = max(accel(3:3:length(accel)));       %Takes minimum value from the array
min_posz = min(accel(2:3:length(accel)));       %Takes minimum value from the array
max_z = max([max_posz -1*min_posz]);            %Compares the min and max values and takes the higher one. (Sets min to positive as damage will be a positive number)
max_z = max_z - 9.7                             %9.7 was supposed to be the initial value.

if max_x>6                                      %Register data only if the accel exceeded 6.                                
else
    max_x = 0;                                  %Otherwise set it to zero
end

if max_y>6                                   %Register data only if the accel exceeded 6.
else
    max_y = 0;                                  %Otherwise set it to zero
end

if max_z>7                                     %Register data only if the accel exceeded 7.
else
    max_z = 0;                                  %Otherwise set it to zero
end

if max_x>=0 || max_y>=0 || max_z>=0
    damage_done = 3*max_x+3*max_y+2*max_z;            %Damage uses movement along all three axis. (most people move phone along y-axis)
else
    damage_done = 0;                            %If mobile not moved do not register any attack.
end
end







