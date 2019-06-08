[y,Fs] = audioread('audio\\punch.wav');            %Read the given audio file.
hit = audioplayer(y,Fs);                    %Creates an audio player object with the given handle
play(hit)                                   %Plays the sound.