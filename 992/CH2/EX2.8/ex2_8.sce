
//Exa:2.8
clc;
clear;
close;
//Given:
Pc=6;//in terms of kw
Pt=7.5;//in terms of kw
m2=0.5;//depth
m1=sqrt(2*(Pt/Pc-1));
printf("\n\n\t modualtion index = %f",m1);
mt=sqrt(m1*m1 + m2*m2);
printf("\n\n\t total modulation index = %f",mt);
PT=Pc*(1+(mt^2)/2);
printf("\n\n\t total power of modulated signal = %f kW ",PT);