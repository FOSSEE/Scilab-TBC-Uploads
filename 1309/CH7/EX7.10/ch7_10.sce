clc;
clear;
printf("\t\t\tChapter7_example10\n\n\n");
// Calculation of the pressure drop for the air passing over the tubes and the heat transferred to the air.
// properties of air at  70 + 460 = 530 degree R = 540 degree R from appendix table D1
rou= 0.0735; // density in Ibm/cu.ft 
cp=0.240; // specific heat BTU/(lbm-degree Rankine) 
v= 16.88e-5; // viscosity in sq.ft/s 
kf = 0.01516 ; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a = 0.859; // diffusivity in sq.ft/hr 
Pr = 0.708; // Prandtl Number
// specifications of 3/4 standard type K copper tubing from appendix table F2
OD=0.875/12; // outer diameter in ft
ID=0.06208; // inner diameter in ft
A=0.003027; // cross sectional area in sq.ft
L=2;
sL=1.5/12;
sT=1.3/12;
V_inf=12; // velocity of air in ft/s
V1=(sT*V_inf)/(sT-OD); // velocity at area A1 in ft/s
printf("\nVelocity at area A1 is %.1f ft/s",V1);
sD=((sL)^2+(sT/2)^2)^0.5; // diagonal pitch in inch
printf("\nThe diagonal pitch is %.2f in",sD*12);
V2=(sT*V_inf)/(2*(sD-OD));
printf("\nVelocity at area A2 is %.1f ft/s",V2);
if V1>V2 then
    Vmax=V1;
    else Vmax=V2;
end
Re_D=Vmax*OD/v; // Reynolds Number
printf("\nThe Reynolds number is %.2e ",Re_D);
sT_OD=1.3/0.875;
sT_sL=1.3/1.5;
printf("\nThe values of parameters are sT/Do=%.2f and sT/sL=%.2f",sT_OD,sT_sL);
f1=0.35; //value of f1 for above values of sT/Do and Re
f2=1.05; //Corresponding value of f2 for above values of sT/sL and Re
gc=32.2;
N=7;
dP=N*f1*f2*(rou*Vmax^2/(2*gc));
printf("\nThe pressure drop is %.2f lbf/ft^2 = %.4f psi",dP, dP/147);
sL_Do=sL/OD;
C1=0.438; //value of C1 for above values of sT/Do and sL/Do
C2=0.97; //value of C2 for above values of sT/Do and sL/Do
m=0.565; //value of m for above values of sT/Do and sL/Do
hc=kf*1.13*C1*C2*(Re_D)^m*(Pr)^(1/3)/OD; // The convection coefficient
printf("\nThe convection coefficient is %.1f BTU/(hr.sq.ft.degree Rankine)",hc);
As=70*%pi*OD*L; // outside surface area of 70 tubes
printf("\nThe outside surface area of 70 tubes is %.1f sq.ft",As);
Tw=200; // outside surface temeperature in degree F
T_inf=70; // air temperature in degree F
q=hc*As*(Tw-T_inf);// heat transferred
printf("\nThe heat transferred is %.2e BTU/hr",q);
