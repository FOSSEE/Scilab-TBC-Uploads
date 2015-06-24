clc
V=150+180*%i;          //Assigning values to parameters
I=5-4*%i;
Z=V/I;
disp("Ohms",Z,"Impedance");
[Ro,Theta]=polar(Z);
P=V*I*cos(Theta);
[r,t]=polar(P);
disp("Watts",r,"Power consumed");