[y,Fs] = audioread('audio\\main_menu.mp3');            %Read the given audio file.
h = audioplayer(y,Fs);                          %Creates an audio player object with the given handle
play(h)                                          %Plays the sound.