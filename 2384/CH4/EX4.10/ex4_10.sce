// Exa 4.10
clc;
clear;
close;
format('v',7)
// Given data
R = 120;// in ohm
XC = 250;// in ohm
I = 0.9;// in A
Z= R-%i*XC;// in ohm
phi= atand(imag(Z),real(Z))
V=I*Z;// in V
VR = I*R;// in V
VC= I*XC;// in V
P= abs(V)*I*cosd(phi);// in W
Q= abs(V)*I*sind(phi);// in VAR
disp(cosd(phi),"The power factor is : ")
disp("Supply voltage : ")
disp("Magnitude is : "+string(abs(V))+" V and angle is : "+string(atand(imag(V),real(V)))+" °")
disp(VR,"The voltage across resistance in V is : ")
disp(VC,"The voltage across capacitance in V is : ")
disp(P,"The active power in W is : ")
disp(Q,"The reactive power in VAR is : ")
