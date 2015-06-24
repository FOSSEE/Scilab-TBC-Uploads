// Example 4.1:Link Length
clc;
clear;
close;
alpha = 0.5;//Attenuation loss in dB/Km
Pi=1.5;//input power in milli watt
Po=2//Output power in micro watt
L=(10/alpha)*(log10((Pi*10^-3)/(Po*10^-6)));// Link Length in Km
disp(L,"Length in Km")
