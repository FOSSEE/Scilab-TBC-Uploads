// Exa 4.9
clc;
clear;
close;
// Given data
// Relation of specific internal energy of the gas
// U= 1.5*p*v-85 kJ/kg
p1 = 1000;// in kpa
p2 = 200;// in pa
v1 = 0.20;// in m^3
v2 = 1.20;// in m^3
m = 1.5;// in kg
U1= 1.5*p1*v1-85;//  kJ/kg
U2= 1.5*p2*v2-85;//  kJ/kg
delU= U2-U1;// in kJ
disp(delU,"Change in internal energy in kJ is");
// p1= a+b*v1          (i)
// p2= a+b*v2          (ii)
// From eq(i) and (ii)
b= (p1-p2)/(v1-v2);// in kN/m^2
a= p1-b*v1;// in kN/m^2 
disp(a,"The value of a in kN/m^2 is ")
disp(b,"The value of b in kN/m^2 is ")
// Part (c)
// Work done = integration of p w.r.t. v and p = a+b*v1
W= integrate('a+b*v','v',v1,v2);// in kJ
disp(W,"Work done in kJ is :")
// Part (d)
Q= delU+W;// in kJ
disp(Q,"The net heat transfer in kJ is : ")
