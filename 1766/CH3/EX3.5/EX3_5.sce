clc;funcprot(0);//Example 3.5
//Initilisation of Variables
As=0.25;....//Surface area of a copper slab in m^2
L=0.01;....//thickness of surface slab in m
Ti=300;...//Uniform temparature of the slab in degrees celcius
Ta=40;...//Ambient temparature in degrees celcius
h=90;...//heat transfer coefficient on surface in W/m*degrees celcius
T=110;...//Temparature for required time in degrees celcius
d=9000;.....//density of copper slab in kg/m^3
C=0.38;.....//specific heat of copper slab in kJ/kg degrees celcius
K=370;.....//thermal conductivity of copper slab in W/m degrees celcius
//calculations
Lc=L/2;....//characteristic length of a slab in m
Bi=(h*Lc)/K;....//biot number 
t=(-d*C*1000*Lc^2*(log((T-Ta)/(Ti-Ta))))/(K*Bi);.......//time required for slab to reach 110 C temparature in s
disp(t,"time required for slab to reach 110 C temparature in s:")
