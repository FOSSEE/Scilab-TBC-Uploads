//Example 17.2
clc
//From figure 17.5
disp('The mesh equations are')
disp('V1=10*I1-10*I2')
disp('0=-10*I1+17*I2-2*I3-5*I4')
disp('0=-2*I2+7*I3-I4')
disp('0=-0.5*I3+1.5*I4')
//We need to find input impedance
disp('Zin=delz/del11')
//In matrix form
A=[10 -10 0 0 ;-10 17 -2 -5; 0 -2 7 -1;0 0 -0.5 1.5]
delz=det(A)
printf("\n delz=%f ohm^3",delz);
//Eliminating first row and first column to find del11
B=[17 -2 -5;-2 7 -1;0 -0.5 1.5]
del11=det(B)
printf("\n del11=%f ohm^2",del11);
Zin=delz/del11
printf("\n Zin=%f ohm",Zin);
