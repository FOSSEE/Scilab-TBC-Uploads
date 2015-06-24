//Page Number: 468
//Example 9.8
clc;
//Given
e=1.6D-19;
Nd=1.1D+23; //m-3
a=0.2D-6; //m
er=11.8;
e0=8.854D-12;
mue=800D-4; //m2/Vs
Z=50D-6; 
L=8.5D-6; //m
W0=1; //V
Vd=12; //V
Vg=1.5; //V

//(i) Pinch off voltage and pinch off current
Vp=(e*Nd*a*a)/(2*er*e0);
disp('V',Vp,'Pinch off voltage:');

Ip=(mue*e*e*Nd*Nd*Z*a*a)/(e0*er*L);
disp('A',Ip,'Pinch off current:');
//Answer for Ip is 55809 A but it is given as 0.00558 A

//(ii) Drain and maximum drain current
//Taking Ip=5.58mA as given in book
Ip1=0.00558; //A
x=(2/3)*(((Vd+Vg+W0)/Vp)^(3/2));
y=(2/3)*(((Vg+W0)/Vp)^(3/2));
Id=Ip1*[(Vd/Vp)-x+y];
disp('A',-Id,'Drain current:');

//Saturation Current
Is=Ip1*[(1/3)-((Vg+W0)/Vp)+((2/3)*(((Vg+W0)/Vp)^(3/2)))];
disp('A',Is,'Drain saturation current:');

//(iii) Cut off frequency
f=(2*mue*e*Nd*a*a)/(%pi*er*e0*L*L);
disp('GHz',f/10^9,'Cutt off freqency:');


