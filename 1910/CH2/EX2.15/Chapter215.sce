// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 2, Example 15")
//A stack that is b=300mm wide and l=100mm deep contains N=60 fins each of length L=12mm.
L=0.012;//in metre
b=0.3;//in metre
l=0.1;//in metre
N=60;
//The entire stack is made of aluminum which is everywhere t=1.0 mm thick.
t=0.001;//in metre
//The temprature limitations associated with electrical components are  Tb=400K and TL=350K.
//Tb is base temprature and TL is end temprature
Tb=400;
TL=350; 
//Given convection heat transfer coefficient(h=150W/(m^2*K)),Surrounding Temprature(Tinf=300K),thermal conductivity of aluminium(kaluminium=230W/(m*K))
h=150;
Tinf=300;
kal=230;
//Here both the ends of the fins are at fixed tempratures .Therefore we use M=(h*P*k*A)^0.5 and m=((h*P)/(k*A))^0.5,thetab=Tb-Tinf,thetaL=TL-Tinf
//from the given data perimeter of each fin is given by P= 2*(l+t)in m and area of each fin is A=t*l
disp(" perimeter of each fin in m is")
P= 2*(l+t)
disp("Cross sectional area of fin in m^2 is")
A=t*l
//M is defined as (h*P*kal*A)^0.5 and m is defined as ((h*P)/(kal*A))^0.5
M=(h*P*kal*A)^0.5
m=((h*P)/(kal*A))^0.5
//thetab and thetaL are the parameters that define the fin tempratures at base and tip respectively.
disp("Temprature parameter at fin base in K is")
thetab=Tb-Tinf
disp("Fixed temprature at fin tip in K is")
thetaL=TL-Tinf
//Heat loss from the plate is Qb
disp("Heat loss from the plate at 400K in W is")
Qb=[N*(h*P*kal*A)^0.5*thetab*((cosh(m*L)-(thetaL/thetab))/(sinh(m*L)))]+(((l*b)-(N*A))*h*thetab)+(l*b*h*thetab)











