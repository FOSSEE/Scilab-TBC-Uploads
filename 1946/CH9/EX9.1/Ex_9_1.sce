// Example 9.1;//quantum efficiency
clc;
clear;
close;
re=4.2*10^6;// Average no. of electron hole pair generated
rp=6*10^6;//no. of photons
h=1200;//wavelength in nano meter
n=round((re/rp)*100);//quantum efficiency
disp(n,"quantum efficiency is")
