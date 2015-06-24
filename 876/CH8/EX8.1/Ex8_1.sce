//caption:find deflection sensitivity of CRO
//Ex8.1
clc
clear
close
l=20*10^-3//axial length of deflection plate(in meter)
L=0.2//distance from the centre of the deflection plates to the screen(in meter)
s=5*10^-3//spacing between two plates(in meter)
V=2500//accelerating voltage(in Volt)
S=(l*L)/(2*s*V)
disp(S,'deflection sensitivity of CRO(in m/V)=')