clc
//to calculate number of oscillations corresponding to the coherence length
L=2.945*10^-2 //coherence length in m
lambda=5890*10^-10 //wavelength of sodium light in m
n=L/lambda
disp("the number of oscillations is n="+string(n)+"unitless")
//to calculate coherence time
c=3*10^8 //light speed in m
Time=L/c //coherence time
disp("the coherence Time="+string(Time)+"s")
