clc
//to calculate number of electrons 
I=2*10^-3 //current in mA
e=1.6*10^-19 
n=I/e
disp("number of electrons striking the target per second is n="+string(n)+"unitless")
//to calculate speed
m=9.1*10^-31 //mass of electron in kg
V=12.4*10^3 //potential difference in V
v=sqrt(2*V*e/m)
disp("the speed with which electrons strike the target is v="+string(v)+"m/s")
