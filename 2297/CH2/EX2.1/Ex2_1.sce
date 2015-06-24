// Example 2.1 :current
clc;
close;
clear;
format('v',7)
// given :
//15*I1-5*I2=10 loop 1 equation
//20*I2-5*I1-5*I3=0 loop 2 equation
//10*I3-5*I2=0 loop 3 equation
vs=10;//voltage in volts
R1=10;//resistance in ohm
R2=5;//resistance in ohm
R3=10;//resistance in ohm
R4=5;//resistance in ohm
R5=4;//resistance in ohm
Ra=1;//resistance in ohm
A=[R1+R2 R2-R1 0;R2-R1 R2+R3+R4 -R4;R4-(R5+Ra) -R4 R4+R5+Ra];//making equations
nb=7;//number of branches
nn=5;//number of nodes
nl=nb-(nn-1);//number of loops
nvs=1;//number of voltage sources
nivs=nn-1-nvs;//number of independent voltage variables
B=[vs;0;0];//making equations
X=A\B;//solving equations
I3=X(3,1);//calculating currrent
disp(I3,"current in resistance Ra=1.0 ohm is ,(A)=")
//directions of the current are 2 to 3 and 3 to 4 respectively
