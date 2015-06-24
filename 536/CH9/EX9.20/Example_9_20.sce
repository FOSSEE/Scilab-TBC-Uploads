clc;
clear;

printf("\n Example 9.20\n");

e=0.75; //Emissivity of grey surface
r=1-e; //reflectivity of surface
Ts=400; //Temperature of surface
T_amb=295;
sigma=5.67e-8;
q1=3e3; //Rate of radiation arriving at grey surface
//From equation 9.118
Eb=sigma*Ts^4;
printf("\n Emissive Power = %.0f W/m^2",Eb);
//From equation 9.138
qo=e*Eb+r*q1;
printf("\n Radiosity = %.0f W/m^2",qo);
//From equation 9.140
Q_A=e/r*(Eb-qo);
q=Q_A;
printf("\n The net rate of radiation trasfer = %.0f W/m^2",q);
printf("\n where the negative value indicates heat transfer to the surface.");
//For convective heat transfer from the surface
qc=-1*q;
hc=qc/(Ts-T_amb);
printf("\n Coefficient of heat transfer = %.1f W/m^2 K",hc);