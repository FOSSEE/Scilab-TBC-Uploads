
//Example NO.12.4
//Page No.357
//To find critical current density.
clc;clear;
D=1*10^(-3);//Diameter of the wire -[m].
Tc = 7.18;//Critical temperature -[K].
Ho = 6.5*10^4;//Critical field -[A/m].
T = 4.2;//Temperature -[K].
R = 0.5*10^-3;//Radius.
I = 134.33;//Current.
Hc = Ho*(1-((T^(2))/(Tc^(2))));
printf("\nCritical magnetic field is %3.3e A/m",Hc);
ic = (2*%pi*R*Hc);
printf("\nCritical current is %.2f A",ic);
J = (I/(%pi*R^2));
printf("\nCritical current density is %3.3e A/m^2",J);
