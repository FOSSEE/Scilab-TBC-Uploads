//Page Number: 376
//Example 7.10
clc;
//Given
V0=10D+3; //V
I0=2; //A
b=4D-2; //m
a=3D-2; //m
B0=0.01; //Wb/m2
ebym=1.759D+11;

//Cut off voltage
x=1-((b*b)/(a*a));
V=(ebym*(B0^2)*(a^2)*(x^2))/8;
disp('KV',V/1000,'Cut off voltage:');

//Magnetic flux density
y=-sqrt((8*V0)/ebym);
B=y/(a*x);
disp('T',B,'Magnetic flux density:');
