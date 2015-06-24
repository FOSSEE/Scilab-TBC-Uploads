//Exa 6.1
clc;
clear;
close;
format('v',6);
//Given data :
r=0.22;//ohm
x=0.45;//ohm
g=4*10^-9;//S
b=2.53*10^-6;//S
f=50;//Hz
l=1000;//Km
//Using Convergent series of complex angles
z=r+%i*x;//ohm
y=g+%i*b;//ohm
Z=z*l;//ohm
Y=y*l;//ohm
YZ=Y*Z;//ohm
Y2Z2=YZ^2;//ohm
Y3Z3=YZ^3;//ohm
A=1+YZ/2+Y2Z2/24+Y3Z3/720;//ohm
D=A;//oh,m
B=Z*(1+YZ/6+Y2Z2/120+Y3Z3/5040);//ohm
C=Y*(1+YZ/6+Y2Z2/120+Y3Z3/5040);//ohm
disp("Auxiliary Constants by using Convergent series of complex angles : ");
disp(A,"A = ");
disp(B,"B = ");
disp(C,"C = ");
//Using Convergent series of real angles
A=cosh(sqrt(YZ));//ohm
D=A;//ohm
B=sqrt(Z/Y)*sinh(sqrt(YZ));//ohm
C=sqrt(Y/Z)*sinh(sqrt(YZ));//ohm
A=cosh(sqrt(YZ));//ohm
disp("Auxiliary Constants by using Convergent series of real angles : ");
disp("A, magnitude is "+string(abs(A))+" and angle in degree is "+string(atand(imag(A),real(A))));
disp("B, magnitude is "+string(abs(B))+" and angle in degree is "+string(atand(imag(B),real(B))));
disp("C, magnitude is "+string(abs(C))+" and angle in degree is "+string(atand(imag(C),real(C))));
disp("We obtain same result by both of the methods.")
