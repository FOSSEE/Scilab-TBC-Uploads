
//Example 11.12.b // PHASE ANGLE OF CURRENT AND VOLTAGE
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
Y=sqrt(G^2+B^2);//in ohms
I=V*Y;//curent in ampere
theta=acosd(G/Y);//
x=round(theta);//
y=theta-x;//
disp("phase angle is "+string(x)+" degree and "+string(60*y)+" munutes ")
//answer is wrong in the textbook


