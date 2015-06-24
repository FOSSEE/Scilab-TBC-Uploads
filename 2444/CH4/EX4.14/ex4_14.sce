// Exa 4.14
clc;
clear;
close;
format('v',7)
// Given data
R1= 4;// in ohm
R2= 8;// in ohm
R3= 8;// in ohm
i1= 1;// in A (assumed)
h11= R1+R2*R3/(R2+R3);// in ohm
disp(h11,"The value of h11 in ohm is : ")
i2= -1/2*i1;// in A
h21= i2/i1;// unit less
disp(h21,"The value of h21 is : ")
v2= 1;// in V (assumed)
i2= v2/(R3+R2);// in A
v1= v2/2;// in V
h12= v1/v2;// unit less
disp(h12,"The value of h12 is : ")
h22= i2/v2;// in s
disp(h22,"The value of h22 in s is : ")
