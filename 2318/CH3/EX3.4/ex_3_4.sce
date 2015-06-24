//Example 3.4: Resistor,current and power loss
clc;
clear;
close;
//given data :
S=0.1;// in ohm
Vs=1.0235;// in V
Vr=0.4211;// in V
R=(Vr/Vs)*S;
disp(R,"Resistance of unknown resistor,R(ohm) = ")
I=Vs/S;
disp(I,"Current through the resistor,I(A) = ")
P=I^2*R;
disp(P,"Power loss in the unknown resistance,P(W) = ")
