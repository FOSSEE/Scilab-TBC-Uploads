clc
clear 
printf("example 5.15 page number 207\n\n")

//to find the amount of vapor and liquid and amount of heat transfer

F = 5000   //in kg/hr
xF = 0.01
xL = 0.02;

L = F*xF/xL;
V = F-L;
printf("L = %f Kg/hr\n V = %f kg/hr",L,V)

TF= 303  //in K
hF = 125.9   //in KJ/kg
T1 = 373.2   //in K
Hv = 2676.1   //in kJ/kg
hL = 419.04;   //in kJ/kg
Ts = 383.2   //in K
Hs = 2691.5   //in kJ/kg
hs = 461.30   //in kJ/kg

S = (F*hF-L*hL-V*Hv)/(hs-Hs);
printf("\n\namount of steam = %f kg steam/h",S)

q = S*(Hs - hs);
q = q*1000/3600   //conversion to Watt
U = q/(69.9*10);
printf("\n\nheat reansfer coefficient = %f W/sq m K",U)
