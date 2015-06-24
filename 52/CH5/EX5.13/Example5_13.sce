//Example 5.13
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//To Design the 3rd Order Butterworth Filter using Impulse Invarient Method
clear;
clc ;
close ;
s=%s;
HS=1/((s+1)*(s^2+s+1));
pp=ilaplace(HS);//Inverse Laplace
syms n z;
t=1;
X= symsum (pp*(z^(-n)),n ,0, %inf );//Z Transform
disp(X,'H(z)= ');