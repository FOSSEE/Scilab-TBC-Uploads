clc;
clear;
printf("\t\t\tChapter7_example5\n\n\n");
// validation of the equation st.(Pr)^(2/3)=Cd/2 where St: Stanton Number Pr:Prandtl Number Cd: Drag Coefficient
// values of parameters from example 7.4
rou= 0.0812; // density in Ibm/ft^3 
cp=0.2918; // specific heat BTU/(lbm-degree Rankine) 
v= 17.07e-5; // viscosity in ft^2/s 
kf = 0.01546 ; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a = 0.8862; // diffusivity in ft^2/hr 
Pr = 0.709; // Prandtl Number
Tw=469; // maximum heater temperature in degree Rankine
T_inf=300; // free-stream temperature in degree Rankine
qw=324; // The wall flux in BTU/(hr.ft^2)
V_inf=20; // velocity in ft/s
hx=qw/(Tw-T_inf); //  The convection coefficient
printf("\nThe convection coefficient is %.2f BTU/(hr.sq.ft.degree R)",hx);
LHS=(hx/3600)*(Pr)^(2/3)/(rou*cp*V_inf);
printf("\nThe value of left hand side of the equation is %.2e",LHS);
Re_L=1.46e+005; // Reynolds number at plate end
RHS=0.332*(Re_L)^(-0.5);
printf("\nThe value of left hand side of the equation is %.2e",RHS);
err=(LHS-RHS)*100/LHS;
printf("\nThe error is %d percent",err);
printf("\nSince the error is only %d percent, the agreement is quite good",err);
