// Example 4.1.b:signal attenuation per km
clc;
clear;
close;
L=8;// Length of fiber in km
Pi=120*10^-6;// input power in Watt
Po=4*10^-6;//Output power in Watt
alpha=(10*(log10(Pi/Po)));//Loss in dB
alphal=alpha/L
disp(alphal,"signal attenuation per km in dB/km is")
