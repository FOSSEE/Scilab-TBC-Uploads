Zl=30+%i*60; //load impedance
Z0=50; // intrinsic impedance
d=2*10^-2; //length of wire
f=2*10^9;
c=3*10^8;
T0=((Zl-Z0)/(Zl+Z0)); //load reflection coefficient
beta=((2*%pi*f)/(0.5*c));
T=-0.32-%i*0.55;
Zin=Z0*((1+T)/(1-T)); //input impedance
disp("Ohms",Zin,"Input impedance-->");