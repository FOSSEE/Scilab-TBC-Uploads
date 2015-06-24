//Page Number: 563
//Example 10.13
clc;
//Given
Z0=50; //ohm
//Sincr ratio of power is 2:3
x1=5/2;
y1=5/3;
//Output Impedance
Z1=x1*Z0;
Z2=y1*Z0;
disp('ohm',Z1,'Output Impedance 1:')
disp('ohm',Z2,'Output Impedance 2:')

//Input Impedance
Zin=[((Z2*2*Z2)/3)/((Z2+(2*Z2)/3))];

//Looking into Z1, Z2 is || to Z0
A1=(Z2*Z0)/(Z2+Z0);

//Looking into Z, Z2 is || to Z0
A2=(Z1*Z0)/(Z1+Z0);

//Reflection Coeffcients
R1=(A1-Z1)/(A1+Z1);
R2=(A2-Z2)/(A2+Z2);

disp(R2,R1,'Reflection Coeffcients:');

