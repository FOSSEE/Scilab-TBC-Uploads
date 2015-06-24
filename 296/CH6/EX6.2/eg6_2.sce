kT = 0.0259;
ni = 1.5*10^10;
q = 1.6*10^-19;
q0 = 1;
epsilon0 = 8.85*10^-14;
epsilon = 11.8;
epsiloni = 3.9;
Na = 5*10^15;
d = 10^-6;
Vt = 0.6;
Z = 25*10^-4;
L = 10^-4;
Vg1 = 5;
Vd1 = 0.1;
Vg2=3;
Vd2=5;
Vdsat = Vg2-Vt;
Vd3=7;
un = 200;
Ci = epsiloni*epsilon0/d;
Id1 = (Z*un*Ci/L)*((Vg1-Vt)*Vd1-0.5*Vd1^2); //linear region
Id2 = (Z*un*Ci/L)*((Vg2-Vt)*Vdsat-0.5*Vdsat^2); //saturation region
disp(Ci*10^6,"C(i) (in microfarad per square cm)=")
disp(Id1*10^3,"For V(G)=5V and V(D)=0.1V, we are in the linear region and drain current (in miliampere)=")
disp(Id2*10^3,"For V(G)=3V and V(D)=5V, we are in the saturation region and drain current (in miliampere)=")
disp("For VD = 7 V, ID will not increase, because we are in the saturation region.")