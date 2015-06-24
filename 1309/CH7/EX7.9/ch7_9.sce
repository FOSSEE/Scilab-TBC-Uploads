clc;
clear;
printf("\t\t\tChapter7_example9\n\n\n");
// determination of required current
// properties of air at film temperature (300 + 500)/2 = 400 K from appendix table D1
rou= 0.883; // density in kg/cu.m
cp= 1014; // specific heat in J/(kg*K) 
v= 25.90e-6; // viscosity in sq.m/s  
Pr = 0.689; // Prandtl Number 
kf= 0.03365; // thermal conductivity in W/(m.K)
a = 0.376e-4; // diffusivity in sq.m/s
V_inf=1; // velocity in m/s
D=0.00013; // diameter in m
L=1/100; // length of wire in cm
Re_D=V_inf*D/v; // The Reynolds number of flow past the wire
printf("\nThe Reynolds number of flow past the wire is %.3f",Re_D);
C=0.911; //value of C for cylinder from table 7.4
m=0.385; //value of m for cylinder from table 7.4
hc=kf*C*(Re_D)^m*(Pr)^(1/3)/D; // the convection coefficient in W/(m^2.K)
printf("\nThe convection coefficient is %d W/(sq.m.K)",hc);
Tw=500; // air stream temperature in K
T_inf=300; // wire surface temperature in K
As=%pi*D*L; // cross sectional area in sq.m
qw=hc*As*(Tw-T_inf); // The heat transferred to the air from the wire
printf("\nThe heat transferred to the air from the wire is %.3f W",qw);
resistivity=17e-6; // resistivity in ohm cm
Resistance=resistivity*(L/(%pi*D^2)); // resistance in ohm
printf("\nThe resistance is %.3f ohm",Resistance/100);
i=(qw*100/Resistance)^0.5; // current in ampere
printf("\nThe current is %.1f A",i);
