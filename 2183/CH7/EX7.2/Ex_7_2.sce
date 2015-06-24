
// Example 7.2 //quantum efficiency and responsivity
clc;
clear;
close;
e=1.6*10^-19;//elecronic charge
re=1.2*10^12;// Average no. of electron hole pair generated
rp=3*10^12;//no. of photons
h=0.85;//wavelength in micro meter
E=0.75;//energy gap in electron volt
C=3*10^8;//SPEED of light in meter per second
n=round((re/rp)*100);//quantum efficiency
ht=6.62*10^-34;//plank constt.
R=((n/100)*e*h*10^-6)/(ht*C);
disp(n,"quantum efficiency (%)")
disp(R,"Responsivity is in Ampere per Watt")
