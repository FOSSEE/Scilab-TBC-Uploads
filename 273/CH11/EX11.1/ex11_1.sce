clc;clear;
//Example 11.1
//calculation of total absorption and average absorption coefficient

//given values

V=20*15*5;//volume of hall in m^3
t=3.5;//reverberation time of empty hall in sec


//calculation
a1=.161*V/t;//total absorption of empty hall
k=a1/(2*(20*15+15*5+20*5));
disp(k,'the average absorption coefficient is');