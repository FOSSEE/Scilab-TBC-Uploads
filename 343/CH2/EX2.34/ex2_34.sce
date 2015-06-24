clc
V=127.28+%i*0;             //Assigning values to parameters
I=1.251-%i*1.251
Z=V/I;
[Ro,Theta]=polar(I)
P=V*I*cos(Theta);
[r,t]=polar(P)
disp("Ohms",Z,"Resistive and reactive part of impedance");
disp("Watts",r,"Average Power taken");