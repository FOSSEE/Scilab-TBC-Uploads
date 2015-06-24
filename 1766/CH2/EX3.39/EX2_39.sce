clc;funcprot(0);//Example 2.39
//Initilisation of Variables
K=250;....//thermal conductivity of fin in W/m*degrees celcius
h=30;....//heat transfer coefficient between fin and surrounding of air in W/m^2*degrees celcius
d=0.015;....//diameter of fin in m
Tb=250;...//base temparature of fin in degrees celcius
Ta=25;....//surrounding air temparature in degrees celcius
n1=6;...//number of fins for condition a
L1=0.15;....//Length of fins for condition a
n2=12;...//number of fins for condition b
L2=0.075;....//Length of fins for condition b
n3=3;...//number of fins for condition c
L3=0.3;....//Length of fins for condition c
//calculations
A=(%pi/4)*d^2;...//area of fin in m^2
m=sqrt((4*h)/(K*d));...//
Q1=n1*[K*A*m*(Tb-Ta)*tanh(m*L1)];....//heat transfer for 6 fins
Q2=n2*[K*A*m*(Tb-Ta)*tanh(m*L2)];....//heat transfer for 12 fins
Q3=n3*[K*A*m*(Tb-Ta)*tanh(m*L3)];....//heat transfer for 3 fins
E1=Q1/(n1*A*h*(Tb-Ta));....//effectiveness of fins for 6 fins in
E2=Q2/(n2*A*h*(Tb-Ta));....//effectiveness of fins for 12 fins in
E3=Q3/(n3*A*h*(Tb-Ta));....//effectiveness of fins for 3 fins in
disp(Q1,"a)heat transfer for 6 fins:")
disp(E1,"  effectiveness of fins for 6 fins:") 
disp(Q2,"b)heat transfer for 12 fins:")
disp(E2,"  effectiveness of fins for 12 fins:")
disp(Q3,"c)heat transfer for 3 fins:")
disp(E3,"  effectiveness of fins for 3 fins:")
