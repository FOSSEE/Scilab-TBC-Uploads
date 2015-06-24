//Page Number: 113
//Example 2.31
clc;
//Given,
c=3D+8; //m/s
f=15D+9; //hz
d=5; //mm
d1=d/1000; //m

//Cut off frequency
fc=0.8*f;
//Dielctric constant
er=(c/(2*d1*fc))^2+1;
disp(er,'Dielectric constant:');
