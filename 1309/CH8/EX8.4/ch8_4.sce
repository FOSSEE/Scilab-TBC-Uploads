clc;
clear;
printf("\t\t\tChapter8_example4\n\n\n");
// Determination of the variation of average convection coefficient with distance
// properties of air at (65 + 20)/2 = 42.5 degree C =315 K. from appendix table D1
rou= 1123; // density in kg/m^3 
cp= 1006.7; // specific heat in J/(kg*K) 
v= 17.204e-6; // viscosity in m^2/s  
Pr =0.703; // Prandtl Number 
kf= 0.02738; // thermal conductivity in W/(m.K)
a = 0.2446e-4; // diffusivity in m^2/s 
g=9.81;
L=5;
theta=45;
T_inf=20; // ambient air temperature in degree C
Tw=65; // roof surface temperature in degree C
Beta=1/(T_inf+273); // volumetric thermal expansion coefficient in per K
printf("\nThe volumetric thermal expansion coefficient is %.5f /K",Beta);
// determination of Laminar-turbulent  transition length by Vliet equation Ra=3x10^5xexp(0.1368cos(90-theta))
x=((3e5*exp(0.1368*cos(90-theta))*v*a)/(g*cos(theta)*Beta*(Tw-T_inf)))^(1/3);
printf("\nThe Laminar-turbulent  transition length by Vliet equation is %.3f m",x);
i=1;
N=1;
n=0;
X=[0.02 0.04 0.05 0.051 0.1 1.0 3.0 5.0]; // entering values for length(m)
[n m]=size(X);
for i=1:m
    if X(i)<=x then
        // Laminar Flow regime exists
        Ra(i)=(g*cos(%pi*45/180)*Beta*(Tw-T_inf)*X(i)^3)/(v*a);
        hc(i)=(kf/X(i))*(0.68+(0.670*Ra(i)^(1/4))/(1+(0.492/Pr)^(9/16))^(4/9));
    else
        // Turbulent Flow regime exists
        Ra(i)=(g*Beta*(Tw-T_inf)*X(i)^3)/(v*a);
        hc(i)=(0.02738/X(i))*(0.825+0.324*Ra(i)^(1/6))^2;
    end
end
printf("\n\tx,m\t\tRa\t\thc,W/(sq.m.K)\n");
for i=1:m
    printf("\t%.2f\t\t%.2e\t%.2f\n",X(i),Ra(i),hc(i));
end
