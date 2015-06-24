//Example 9.10 //value and direction of the current
clc;
clear;
close
V=34;// in volts
emf1=2;//in volts
r1=6;//in ohms
r2=1;//in ohms
r3=2;//in ohms
r4=4;// in ohms
//apllying kirchoff's low
// x ampere is the current in branch AB
// x1 ampere is the current in branch AC
//x2 ampere is the current in the Branch BD
// x-x2 ampere is the current in the branch BC
// x1+x2 ampere is the current in the branch DC
// x-6*x1+8*x2=2 in mesh ABD
// 2*x-4*x1-14*x2=-2 in mesh BCD
// 10*x1+4*x2=34;//in mesh ADCEF
A=[1 -6 8;2 -4 -14;0 10 4];// EQUATIONS 
B=[2;-2;34];// VALUES
X=A\B;// UNKNOW VALUES
x=X(1,1);//TOTAL CURRENT IN AMPERES
x1=X(2,1);//current taken by battery A
x2=X(3,1);//
b1=x-x2;// in amperes
b2=x1+x2;//in amperes
R=((r1*x1+r4*(x2+x1))/(x+x1));//total resistance in ohms
disp(x," current in 1 ohms resistance from A to B in amperes ")
disp(x1," current in 6 ohms resistance from A to D in amperes ")
disp(x2," current in 8 ohms resistance from B to D in amperes ")
disp(b1,"current in 2 ohm resistance from B to C in amperes")
disp(b2,"current in 4 ohm resistance from D to C in amperes")
disp(R,"total reistance in ohms is")
