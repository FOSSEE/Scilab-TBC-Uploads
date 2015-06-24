//Ex11_6
clc
fs=2*10^(3) 
disp("fs= "+string(fs)+" Hz")// sine wave input signal frequency
fB=1*10^(6)
disp("fB= "+string(fB)+" Hz")// input Time-Base clock frequency

disp("part(i)")// part(i)of question
fb=fB/(10^5)
disp("fb= fB/(10^5)="+string(fb)+" Hz")//  Time-Base frequency for 5 decade counter
delta_t=1/fb
disp("delta_t=1/fb= "+string(delta_t)+" seconds") // Gate Time interval
DISP1=fs*delta_t
disp("fs*delta_t= "+string(DISP1))// Display indication for 5 decade counter
disp("Display indication=0200")// Display indication as 4-bit

disp("part(ii)")// part(ii)of question
fb=fB/(10^3)
disp("fb=fB/(10^3)= "+string(fb)+" Hz")//  Time-Base frequency for 3 decade counter
delta_t=1/fb
disp("delta_t=1/fb= "+string(delta_t)+" seconds") // Gate Time interval for 3 decade counter
DISP2=fs*delta_t
disp("fs*delta_t= "+string(DISP2))// Display indication for 3 decade counter
disp("Display indication=0002")// Display indication as 4-bit
