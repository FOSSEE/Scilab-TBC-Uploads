clc
Vl=400;              //Assigning values to parameters
Il=34.65;
P=14.4*10^3;
Vph=Vl;
Iph=Il/sqrt(3);
Zph=Vph/Iph;
t=acosd(P/(sqrt(3)*Vl*Il))
Z=complex(Zph,t);
disp("Ohms",Z,"Impedance");
disp("Ohms",real(Z),"Resistance");
disp("Ohms",imag(Z),"Reactance");