//Page Number: 301
//Example 5.17
clc;
//Given
f=10D+9;//hz
v0=300;//V
j0=0.3;//A/cm
i0=45D-3;//A

rb=sqrt(i0/(%pi*j0));//mm
disp('mm',rb*10,'Electron beam radius:');
r=rb*(120/100);//mm
disp('mm',r*10,'Radius of cathode disc:');
d=sqrt(2.335D-6*(300)^(3/2)/j0);//mm
disp('mm',d*10,'Cathode anode spacing:');
//Anode hole has to be 15% larger than cathode disc
ra=r*1.15;//mm
disp('mm',ra*10,'Anode hole:');
