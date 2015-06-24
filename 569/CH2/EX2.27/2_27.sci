//calculating the voltage across the oscilloscope
clc;
C=50*10^-6;
f=100000;
disp(f,'frequency=')
Xc=1/(2*%pi*f*C);
R=10^6;
Zl=(R*-%i*Xc)/(R-%i*Xc);
Eo=1;
Zo=10*10^3;

El=Eo/(1+Zo/Zl);
disp(El,'Reading of the multimeter (V)=')
