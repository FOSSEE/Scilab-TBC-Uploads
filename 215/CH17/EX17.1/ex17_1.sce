//Example 17.1
clc
//From figure 17.3
disp('The mesh equations are')
disp('V1=10*I1-10*I2')
disp('0=-10*I1+17*I2-2*I3-5*I4')
disp('0=-2*I2+7*I3-I4')
disp('0=-5*I2-I3+26*I4')
//We need to find input impedance
disp('Zin=delz/del11')
//In matrix form
A=[10 -10 0 0 ;-10 17 -2 -5; 0 -2 7 -1;0 -5 -1 26]
delz=det(A)
printf("\n delz=%f ohm^4",delz);
//Eliminating first row and first column to find del11
B=[17 -2 -5;-2 7 -1;-5 -1 26]
del11=det(B)
printf("\n del11=%f ohm^3",del11);
Zin=delz/del11
printf("\n Zin=%f ohm",Zin);
