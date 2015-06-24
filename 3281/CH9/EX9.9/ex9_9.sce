//Page Number: 469
//Example 9.9
clc;
//Given
e=1.6D-19;
Nd=8D+23; //m-3
a=0.12D-6; //m
er=13.2;
e0=8.854D-12;

//Pinch off voltage
Vp=(e*Nd*a*a)/(2*er*e0);
disp('V',Vp,'Pinch off voltage:');
