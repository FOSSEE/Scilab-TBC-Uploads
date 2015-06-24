clc;
warning("off");
printf("\n\n example14.2.sce - pg726");
T=40+273.15;  //[K] - temperature
P=1;  //[atm] - pressure
// thermal conductivit of air
sigma=3.711*10^-10;  //[m]
etadivkb=78.6;  //[K]
A=1.16145;
B=0.14874;
C=0.52487;
D=0.77320;
E=2.16178;
F=2.43787;
Tstar=T/(etadivkb);
// using the formula si=(A/(Tstar^B))+(C/exp(D*Tstar))+(E/exp(F*Tstar)
si=(A/(Tstar^B))+(C/exp(D*Tstar))+(E/exp(F*Tstar));
// using the formula K=(8.3224*(10^-22))*(((T/M)^(1/2))/((sigma^2)*si))
M=28.966;  //[kg/mole] - molecular weight of air
k=(8.3224*(10^-22))*(((T/M)^(1/2))/((sigma^2)*si));
printf("\n\n Thermal conductivity of air is \n k=%fW/m*K",k);
printf("\n\n Agreement between this value and original value is p[oor;the Chapman-Enskog theory is in erreo when applied to thermal conductivity of polyatomic gases");
// thermal conductivity of argon 
sigma=3.542*10^-10;  //[m]
etadivkb=93.3;  //[K]
A=1.16145;
B=0.14874;
C=0.52487;
D=0.77320;
E=2.16178;
F=2.43787;
Tstar=T/(etadivkb);
// using the formula si=(A/(Tstar^B))+(C/exp(D*Tstar))+(E/exp(F*Tstar)
si=(A/(Tstar^B))+(C/exp(D*Tstar))+(E/exp(F*Tstar));
// using the formula K=(8.3224*(10^-22))*(((T/M)^(1/2))/((sigma^2)*si))
M=39.948;  //[kg/mole] - molecular weight of argon
k=(8.3224*(10^-22))*(((T/M)^(1/2))/((sigma^2)*si));
printf("\n\n Thermal conductivity of argon is \n k=%fW/m*K",k);
printf("\n\n The thermal conductivity from Chapman-Enskog theory agrees closely with the experimental value of 0.0185; note that argon is a monoatomic gas");

