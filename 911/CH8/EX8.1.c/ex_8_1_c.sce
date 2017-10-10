//example 8.1(c)//
clc
//clears the screen//
clear
//clears the variable//
disp('An astable multivibrator with a 500 Hz symmetrical waveform applied to its RESET terminal is alternatively HIGH and LOW for 1ms. Whem the reset input is low, the output is forced to low state. When the reset input is HIGH, an astable waveform appears at the output. The low period of multivibrator is determined as:')
r=14.5*1000;
c=0.01*(10^-6);
l = .69*r*c;
disp(l,'low time(s)=')
disp('The astable output is thus a 5KHz symmetrical waveform. every time the reset terminal goes to HIGH for 1 ms, five cycles of %KHz waveform appear at the output.')