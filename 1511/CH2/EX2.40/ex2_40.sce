// Example 2.40 page no-127
clear
clc

T=301.6
vt=T*1000/11600
vf=50 //mV
vr=-50 //mV
k=(%e^(vf/vt)-1)/(%e^(vr/vt)-1)
printf("\nratio=%.2f\nNegative sign is oecause, the direction of \ncurrent is opposite when the diode is reverse biased",k)
