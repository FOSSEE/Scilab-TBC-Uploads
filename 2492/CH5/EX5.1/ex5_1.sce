// Exa 5.1
format('v',6)
clc;
clear;
close;
R1= 10;// in ohm
R2= 20;// in ohm
R3=30;// in ohm
v2= 50;// in V
v1= 20;// in V
i1= -2.5;//in V
i2= 1;// in A
h11= R1+(R2*R3/(R2+R3));// in ohm
// h-parameters
disp("h-parameters : ")
disp(h11,"The value of h11 in ohm is : ")
// From vi= h11*i1+h12*V1 and i2= h21*i1+h22*v2
h12= v1/v2;
disp(h12,"The value of h12 is : ")
h21= i2/i1;
disp(h21,"The value of h21 is : ")
h22= i2/v2;// in mho
disp(h22,"The value of h22 in mho is : ")

