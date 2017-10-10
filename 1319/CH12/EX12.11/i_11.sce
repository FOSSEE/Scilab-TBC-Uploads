// To find the value of the unknown resitance in the series of resistances in a circuit.

clc;
clear;

R1=20;

V=220;

P=50;

R=poly([0 1],'R','c');
Rt=R1+R;

I=V/Rt;

A=(I^2)*R;// To get the characteristic eqaution to find R. 
B=A-50;
C=B(2);

rts=roots(C);// To find the two resistances

R=round(10000.*rts)./10000;// Rounding off to four decimal points.

Rt=R1+R;// Total resistance

I=V./Rt;// Currents

pow=(I.^2)*(R)';

power=diag(pow);

disp(B(2),'The Characteristic polynomial to find resistance R equated to zero is')

disp('ohms',R,'The solution of the above equation yields two resistances')

disp('Now to check which resistance is suitable by finding out the power dissipated by each of them')

disp('watts',power,'The Power dissipated by both the resistors are')

disp('ohms',R(1),'From comparison with the given value (50 watts), We find that the suitable resistance is')

// The higher resistance is preferred because it limits the amount of current, ( Please see the current ratings of the resistors (Heating effect)) 



