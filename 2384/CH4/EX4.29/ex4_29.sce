// Exa 4.29
clc;
clear;
close;
format('v',6)
// Given data
Z1= 1.6+%i*7.2;// in ohm
Z2= 4+%i*3;// in ohm
Z3= 6-%i*8;// in ohm
V= 100;// in V
Y2= 1/Z2;// in mho
disp(Y2,"The admittance in mho is : ")
Y3= 1/Z3;// in mho
disp(Y3,"The admittance in mho is : ")
ZT= Z1+1/(Y2+Y3);
phi= atand(imag(ZT),real(ZT));
disp("Total circuit impedance : ")
disp("Magnitude : "+string(abs(ZT))+" Ω")
disp("Angle : "+string(phi)+" °");
IT= V/ZT;// in A
PT= V*abs(IT)*cosd(phi);// in W
disp(PT,"The total power supplied in W is : ")
