clc;
clear;
printf("\t\t\tChapter7_example3\n\n\n");
// Determination of  the average  convection  coefficient and the total drag force exerted  on the plate.
// properties of air at (300 + 400)/2 = 350 K from appendix table D1
rou= 0.998; // density in kg/cu.m
cp= 1009; // specific heat in J/(kg*K) 
v= 20.76e-6; // viscosity in sq.m/s  
Pr = 0.697; // Prandtl Number 
k= 0.03003; // thermal conductivity in W/(m.K)
a = 0.2983e-4; // diffusivity in sq.m/s 
L=1; // Length of plate in m
V=5; // velocity of air in m/s
b=0.5; // width in m
Re=V*L/v; // Reynolds number at plate end
printf("\nThe Reynolds number is %.2e",Re);
// Since the flow is laminar at plate end, The average convection coefficient is calculated with Equation Nu=h*L/k= 0.664 Re^(1/2)Pr^(1/3)
h=k*0.664*Re^(1/2)*Pr^(1/3)/L; // The average convection coefficient in W/(sq.m.K)
printf("\nThe average convection coefficient is %.2f W/(sq.m.K)",h);
Df=0.664*V*rou*v*b*(Re)^0.5; // drag force in N
printf("\nThe drag force is %.2e N",Df);
hx=(1/2)*h; // local convective coefficient
printf("\nThe local convective coefficient is %.2f  W/(sq.m.K)",hx);
delta=5*L/(Re)^0.5; // The boundary-layer thickness at plate end
printf("\nThe boundary-layer thickness at plate end is %.2f cm",delta*100);
delta_t=delta/(Pr)^(1/3);
printf("\nThe thermal-boundary-layer thickness is %.2f cm",delta_t*100); 
