clc;funcprot(0);//EXAMPLE 17.4
// Initialisation of Variables
n=4;........................//No of cylinders
k=0.5;......................//For four stroke engine
Tb=160;.....................//Max brake torque in Nm
N=3000;......................//Engine rpm
Pm=9.6;....................//Brake mean effective pressure in bar
//Calculations
D=((2*%pi*N*Tb*6)/(60*1000*Pm*(%pi/4)*N*k*10))^(1/3);.....................//Bore of engine in m
L=D;...................//Given that the stroke is equal to bore
Disp=(%pi/4)*D*D*L;....................................//Displacement in m^3
disp(D*1000,"Since it is given that the stroke is equal to bore, their value is (in mm):    ")
disp(Disp,"The engine displacement (in m^3):")
