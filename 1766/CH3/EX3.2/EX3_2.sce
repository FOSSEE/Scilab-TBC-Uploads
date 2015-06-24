clc;funcprot(0);//Example 3.2
//Initilisation of Variables
Ti=200;...//Initial temparature of aluminium rod in degrees celcius
Ta=30;...//Temparature of air in degrees celcius
ro=0.1;....//diameter of pipe in m
h=50;...//heat transfer coefficient on surface of the rod in W/m*k
d=2707;.....//density of aluminium rod in kg/m^3
C=0.896;.....//specific heat of aluminium rod in kJ K
K=210;.....//thermal conductivity of aluminium rod in W/m K
al=8.418*10^-5;.....//thermal diffucivity of aluminium rod in m^2/s
T=50;...//Temparature of for required time in degrees celcius
//calculations
Lc=ro/2;....//characteristic length of a rod in m
Bi=(h*Lc)/K;....//biot number 
t=(-Lc*(log((T-Ta)/(Ti-Ta))))/(al*Bi);...//time required for rod to reach 50 C temparature in s
disp(t/3600,"time required for rod to reach 50 C temparature in hr:")
