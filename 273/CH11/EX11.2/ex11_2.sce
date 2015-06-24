clc;clear;
//Example 11.2
//calculation of average absorption coefficient

//given values

V=10*8*6;//volume of hall in m^3
t=1.5;//reverberation time of empty hall in sec
A=20;//area of curtain cloth in m^2
t1=1;//new reverberation time in sec

//calculation
a1=.161*V/t;//total absorption of empty hall
a2=.161*V/t1;//total absorption after a curtain cloth is suspended

k=(a2-a1)/(2*20);
disp(k,'the average absorption coefficient is');
