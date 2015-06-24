//Page Number: 22
//Example 1.9
clc;
//Given
ZL=75+(%i*100); //ohms
Z0=50; //ohm

//Normalized load impedance
z=ZL/Z0;
disp(z,'Normalized load impedance:');

//(i) 0.051*lam
//From chart
r=4.6;
Zi1=r*Z0;
disp('ohm',Zi1,'Input impedance at 0.051 lam:');

//(ii) 0.102*lam
r1=1.5-(%i*2);
Zi2=r1*Z0;
disp('ohm',Zi2,'Input impedance at 0.102 lam:');
 
//(iii) 0.301*lam
r2=0.22;
Zi3=r2*Z0;
disp('ohm',Zi3,'Input impedance at 0.301 lam:');
