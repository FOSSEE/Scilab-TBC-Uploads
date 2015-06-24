// Example 4.5.b:Despersion per unit length
clc;
clear;
close;
t=0.1*10^-6;//Time in second
L=15;//Distance in km
dp=(t/L)*10^6;//Despersion per unit length in micro second per Km
disp(dp*10^3,"Despersion per unit length in nano second per km")
