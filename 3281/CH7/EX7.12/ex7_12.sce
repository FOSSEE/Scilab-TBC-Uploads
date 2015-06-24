//Page Number: 377
//Example 7.12
clc;
//Given
V0=10D+3; //V
V01=5D+3; //V
I0=2; //A
b=3D-2; //m
a=2D-2; //m
B0=0.01; //Wb/m2
ebym=1.759D+11;

//Cut off voltage
x=1-((b*b)/(a*a));
V=(ebym*(B0^2)*(a^2)*(x^2))/8;
KV=V/1000; //Kilovolts
disp('KV',KV,'Cut off voltage:');

//Magnetic flux density
y=-sqrt((8*V01)/ebym);
B=y/(a*x);
disp('Wb/m2',B,'Magnetic flux density:');

//Answer in book is wrong for Magnetic flux density as a*a ,where a=2, is taken as 5, which should be 4
