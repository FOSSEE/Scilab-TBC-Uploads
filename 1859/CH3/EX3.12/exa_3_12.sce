// Exa 3.12
clc;
clear;
close;
// Given data
Rm= 1000;// in ohm
Im= 1;// in mA
Im=Im*10^-3;// in amp
r3=0.05;// in ohm
r2=0.45;// in ohm
r1=4.5;// in ohm
// For switch at contact 1
Rm1= Rm;// in ohm
Rs1= r1+r2+r3;// in ohm
I1= Im*(Rm1/Rs1+1);// in A
I1=I1*10^3;// in mA
I1=round((I1/10))*10;

disp(I1,"Ammeter range at contact 1 in mA")
// For switch at contact 2
Rm2= Rm+r1;// in ohm
Rs2= r2+r3;// in ohm
I2= Im*(Rm2/Rs2+1);// in A
I2=round(I2);
disp(I2,"Ammeter range at contact 2 in A")

// For switch at contact 3
Rm3= Rm+r1+r2;// in ohm
Rs3= r3;// in ohm
I3= Im*(Rm3/Rs3+1);// in A
I3=round(I3);
disp(I3,"Ammeter range at contact 3 in A")
