// calculating the noise output voltage of the amplifier
clc;
disp('calculating the noise output voltage of the amplifier')
Bw=100*10^3;
Sn=7*10^-21;
R=50*10^3;
A=(Sn*R*Bw)^0.5;
En=2*A;
disp(En,'Noise voltage at input(V)=');
Ga=100;
Eno=En*Ga;
disp(Eno,'Noise voltage at output(V)=');


