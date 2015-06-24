//Example 9.9.a //value and direction of the current
clc;
clear;
close
V=230;// in volts
emf1=122;//in volts
r=0.4;//internal resistance in ohms
emf2=130;//in volts
r1=0.5;//in ohms
//apllying kirchoff's low
// x ampere is the total current taken by battery
// x1 ampere is the total current taken by battery A
// x-x1 ampere is the total current taken by battery B
// 5*x+0.4*y=180 is the equation in mesh ABEF
// 5.5*x+0.5*y=100 equation in the mesh CDEF
// equation 1 is 25*x+2*y=540 and equation 2 is 22*x-2*y=400
A=[25 2 ;22 -2];// EQUATIONS 
B=[540;400];// VALUES
X=A\B;// UNKNOW VALUES
x=X(1,1);//TOTAL CURRENT IN AMPERES
x1=X(2,1);//current taken by battery A
x2=20-20;//
disp(x1,"current in battery A in amperes (discharging)")
disp(x2,"current in bettery B in amperes")
