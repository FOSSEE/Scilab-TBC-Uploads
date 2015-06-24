// Example 2.34 page no-118
clear
clc

I0=10^-6 //A
T = 301.6  //K
Vf =0.25 //V
Vr= 0.25 //V
//Dynamic Forward Resistance
Vt=T/11600
x=(I0*%e^(Vf/Vt))/Vt
rf=1/x
printf("\nDynamic Forward Resistance, rf = %.3f Ohm",rf)
//Dynamic Reverse Resistance

x1=(I0*%e^(-Vf/Vt))/Vt
rr=1/x1
printf("\nDynamic Reverse Resistance, rr = %.1f * 10^6 Ohm",rr/10^6)
