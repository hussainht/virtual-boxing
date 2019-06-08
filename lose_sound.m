[y,Fs] = audioread('audio\\lose_sound.mp3');              %Read the given audio file.
lose = audioplayer(y,Fs);                            %Creates an audio player object with the given handle
play(lose)                                            %Plays the sound.