//Page Number: 515
//Example 9.25
clc;
//Given
h=6.626D-34; 
c=3D+8; //m/s
e=1.6D-19;
Eg=1.85; //eV

//Wavelenght emitted
lam=(h*c)/(Eg*e);
lamarm=lam*1D+10;
disp('A',round(lamarm),'Wavelenght emitted:');
