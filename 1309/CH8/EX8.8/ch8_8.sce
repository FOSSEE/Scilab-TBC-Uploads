clc;
clear;
printf("\t\t\tChapter8_example8\n\n\n");
// determination of the maximum  amount of heat that fins can transfer
// properties of air at (100 + 35)/2 = 67.5 degree C from appendix table D1
rou= 0.998; // density in kg/cu.m
cp= 1009.0; // specific heat in J/(kg*K) 
v= 20.76e-6; // viscosity in sq.m/s  
Pr =0.697; // Prandtl Number 
kf= 0.03003; // thermal conductivity in W/(m.K)
a = 0.2983e-4; // diffusivity in sq.m/s 
g=9.81;
T_inf=35; // ambient air temperature in degree C
Tw=100; // surface temperature in degree C
Beta=1/(T_inf+273); // volumetric thermal expansion coefficient in per K
printf("\nThe volumetric thermal expansion coefficient is %.5f /K",Beta);
// properties of aluminium from appendix table B1
rou_Al=2702; // density in kg/cu.m
k_Al=236; // thermal conductivity in W/(m.K)
cp_Al=896;// specific heat in J/(kg*K) 
a_Al=97.5e-6; // diffusivity in sq.m/s 
b=46/100;
w=24/100;
// Applying the Bar-Cohen Equations
zeta=((w*v^2)/(g*Beta*(Tw-T_inf)*Pr))^(1/4);
printf("\nThe value of zeta is %.2e ",zeta);
L=1.54*(k_Al/kf)^(1/2)*zeta;
printf("\nThe fin length is %.3f m",L);
S=2.89*zeta;
printf("\nThe fin spacing is %.5f m",S);
q=(b*w*(Tw-T_inf)*1.3*(k_Al*kf)^(1/2))/(6*zeta);
printf("\nThe heat transfer rate is %d W",q);
N=b/(2*S);
printf("\nThe number of fins can be atmost %d",N);

