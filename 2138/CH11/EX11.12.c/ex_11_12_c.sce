//Example 11.12.c // series equivalent arrangement of resistance and reactance
clc;
clear;
close;
V=200;// in volts
L=0.04;// in henry
C=100;//in micro fards
f=50;// hertz
Xl=2*%pi*f*L;//inductive reactance in ohms
Xc=(1/(2*%pi*f*C*10^-6));//CAPACITIVE REACTANCE IN OHMS
Z1=10;//ohms
R1=10;// in ohms
X1=0;// in ohms
R2=5;// in ohms
Z2=sqrt(R2^2+Xl^2);//in ohms
X2=Xl;//
R3=15;// in ohms
Z3=sqrt(R3^2+Xc^2);// IN OHMS
X3=Xc;//
g1=R1/(Z1)^2;// conductance of  branch 1 in mho
b1=X1/(Z1)^2;//susceptance in mho in branch 1
g2=R2/(Z2)^2;// conductance of  branch 2 in mho
b2=X2/(Z2)^2;//susceptance in mho in branch 2
g3=R3/(Z3)^2;// conductance of  branch 3 in mho
b3=X3/(Z3)^2;//susceptance in mho in branch 3
G=g1+g2+g3;// total conductance in mho
B=b1+b2-b3;// total susceptance in mho
I=V/Z3;//curent in amperes
pf3=R3/Z3;//power factor
phi=acosd(pf3);//angle of phase differnce in degree
x=floor(phi);//
y=phi-x;//
tc3=pf3;//
ts3=sind(phi)
pf1=R1/R1;//
tc1=pf1;//
ts1=sind(acosd(pf1));//
I1=V/Z1;//
E1=I1*tc1;// energy component in branch 1
EL1=I1*ts1;// idel current component in branch 1
I2=V/Z2;//
pf2=R2/Z2;//
tc2=pf2;//
ts2=sind(acosd(pf2));//
E2=I2*tc2;//ENERGY COMPONENT IN BRANCH2
EL2=I2*ts2;//idele current component in branch 2
E3=I*tc3;//energy component in branch3
EL3=I*ts3;//idle component of current in branch 3
E=E1+E2+E3;//sum of energy component of current
EL=EL1+EL2-EL3;//sum of idel component of current
It=sqrt(E^2+EL^2);// total current
pft=E/It;//power factor of the complete circuit
phi=acosd(0.95);//angle of phase differnce in degree
x=round(phi);//
y=phi-x;//
Zt=V/It;//in ohms
R=Zt*pft;//equivalent series resistance
X=Zt*(sind(phi));//equivalent series reactance
disp(R,"equivalent series resistance in ohms is")
disp(X,"euivalent series reactance in ohms is")

