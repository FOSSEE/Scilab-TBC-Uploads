clc;clear;
//Example 4.7

//given data
T1=300;
P=200;
T2=600;
M=28.97;
Ru=8.314;

//Part - a
//from Table A–17
u1=214.07;
u2=434.78;
du=u2-u1;//change in internal energy
disp(du,'change in internal energy from data from the air table in kJ/kg');

//Part - b
//from Table A–2c
a=28.11;
b=0.1967*10^-2;
c=0.4802*10^-5;
d=-1.966*10^-9;
//  by equation Cp(T)=a+bT+cT^2+dT^3
dubar=integrate('(a-Ru)+b*T+c*T^2+d*T^3','T',T1,T2);//integrant
du=dubar/M;
disp(du,'change in internal energy the functional form of the specific heat in kJ/kg'); 

//Part - c
//from Table A–2b
Cavg=0.733;
du=Cavg*(T2-T1);
du=ceil(du);
disp(du,'change in internal energy the functional form the average specific heat value in kJ/kg'); 
