clc;
clear;
printf("\t\t\tChapter8_example2\n\n\n");
// Determination of heat lost through the glass per unit area
// properties of air at  22 + 273 = 295 K = 300 K(approx) and 273 K from appendix table D1
rou= [1.177 1.295]; // density in kg/cu.m
cp= [1005 1005.5]; // specific heat in J/(kg*K) 
v= [15.68e-6 12.59e-6]; // viscosity in sq.m/s  
Pr = [0.708 0.713]; // Prandtl Number 
kf= [0.02624 0.02426]; // thermal conductivity in W/(m.K)
a = [0.22160e-4 0.17661e-4]; // diffusivity in sq.m/s 
T_inf=[22 0]// inside and outside temperature in K
Beta=[1/(T_inf(1)+273) 1/(T_inf(2)+273)]; // volumetric thermal expansion coefficient at 295 K and 273 K
printf("\nThe volumetric thermal expansion coefficients at 295 K and 273 K are respectively %.5f and %.5f",Beta(1),Beta(2));
g=9.81;
t=0.005; // thickness of glass
L=0.60; // window length in m
k=0.81; // thermal conductivity of glass from appendix table B3
// for first guess
Tw=[18 4];
printf("\nFor first guess, the results are:\n");
for i=1:2
    Ra(i)=(g*Beta(i)*(Tw(i)-T_inf(i))*L^3)/(v(i)*a(i));
    hL(i)=(kf(i)/L)*(0.68+((0.67*(abs(Ra(i)))^(1/4))/(1+(0.492/Pr(i))^(9/16))^(4/9)));
end
printf("\nThe Rayleigh Numbers are %.3e and %.3e",-Ra(1),Ra(2));
printf("\nThe convective coefficients are %.2f W/(sq.m.K) and %.2f W/(sq.m.K)",hL(1),hL(2));
q=(T_inf(1)-T_inf(2))/((1/hL(2))+(t/k)+(1/hL(1)));
printf("\nThe heat flux is %.1f W/sq.m",q);
for i=1:2
    Tw_final(i)=T_inf(i)-q*(1/hL(i));
    printf("\nThe wall temperature calculated is %.1f",abs(Tw_final(i)));
    Tw(i)=abs(Tw_final(i)); // second guess
end
printf("\nFor second guess, the results are:\n");
for i=1:2
    Ra(i)=(g*Beta(i)*(Tw(i)-T_inf(i))*L^3)/(v(i)*a(i));
    hL(i)=(kf(i)/L)*(0.68+((0.67*(abs(Ra(i)))^(1/4))/(1+(0.492/Pr(i))^(9/16))^(4/9)));
end
printf("\nThe Rayleigh Numbers are %.3e and %.3e",-Ra(1),Ra(2));
printf("\nThe convective coefficients are %.2f W/(sq.m.K) and %.2f W/(sq.m.K)",hL(1),hL(2));
q=(T_inf(1)-T_inf(2))/((1/hL(2))+(t/k)+(1/hL(1)));
printf("\nThe heat flux is %.1f W/sq.m",q);
for i=1:2
    Tw_final(i)=T_inf(i)-q*(1/hL(i));
    printf("\nThe wall temperature calculated is %.1f degree celsius",abs(Tw_final(i)));
end
