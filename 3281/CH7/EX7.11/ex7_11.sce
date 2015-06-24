//Page Number: 376
//Example 7.11
clc;
//Given
e=1.6D-19; //J
B0=0.01; //Wb/m2
d=6D-2; //m
V0=20D+3; //V
ebym=1.759D+11;

//(i) Hull cut off voltage
Voc=(B0*B0*d*d*ebym)/2;
disp('KV',Voc/1000,'Hull cut off voltage:');

//(ii) Hull magnetic field
Boc=sqrt((2*V0)/ebym)/d;
disp('mT',Boc*1000,'Hull magnetic field:');
