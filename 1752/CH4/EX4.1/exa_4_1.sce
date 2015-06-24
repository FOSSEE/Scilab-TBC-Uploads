//Exa 4.1
clc;
clear;
close;
//given data
format('v',9)
L=1;// in m
rho=1600;// in kg/m^3
k=40;// in w/mK
Cp=4*10^3;// in J/kgK
a=900;// in  degree C
b=-300;// in  degree C/m
c=-50;// in  degree C/m^2
Qg=1*10^3;// in kW/m^2
A=10;// area in m^2
//t=a+b*x+c*x^2 at any instant, so
// dtBYdx= b+2*c*x
// d2tBYdx2 = 2*c, then

// Part(a)
//q1= -k*A*dtBYdx , at
x=0;
q1= -k*A*(b+2*c*x);// in w
//q2= -k*A*dtBYdx , at
x=L;
q2= -k*A*(b+2*c*x);// in w
E_stored= (q1-q2)+Qg*A*L;// in watt
disp(E_stored,"The rate of change of energy storage in watt")

// Part(b)
alpha= k/(rho*Cp);// in m^2s
d2tBYdx2 = 2*c;
dtBYdtoh= alpha*(d2tBYdx2+Qg/k );// in degree C/sec
disp(dtBYdtoh,"Rate of change of temperature in degree C/sec");
disp("Since dt by dx is independent of x. Hence time rate of charge of temperature throughout wall will remain same.")




