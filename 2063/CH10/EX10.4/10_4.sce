clc
clear
//Input data
m=20000;//The storage capacity of fish in a storage plant in kg
T1=298;//Supplied temperature of fish in K
T2=263;//Temperature of cold storage in which fish are stored in K
T3=268;//Freezing point of fish in K
Caf=2.95;//Specific heat of fish above freezing point in kJ/kg K
Cbf=1.25;//Specific heat of below freezing point in kJ/kg K
W=75;//Work required by the plant in kW
TR=210;//One tonne refrigeration in kJ/min
hfg=230;//Latent heat of fish in kJ/kg

//Calculations
COPr=T2/(T1-T2);//COP of reversed carnot cycle
COPa=0.3*COPr;//Given that actual COP is 0.3 times of reversed COP
Hr=(COPa*W)*60;//Heat removed by the plant in kJ/min
C=Hr/TR;//Capacity of the plant in TR
Q1=m*Caf*(T1-T3);//Heat removed from the fish above freezing point in kJ
Q2=m*Cbf*(T3-T2);//Heat removed from fish below freezing point in kJ
Q3=m*hfg;//Total latent heat of the fish in kJ
Q=Q1+Q2+Q3;//Total heat removed by the plant in kJ
T=(Q/Hr)/60;//Time taken to achieve cooling in hrs 

//Output data
printf('(a)Capacity of the plant is %3.2f TR\n (b)Time taken to achieve cooling is %3.2f hours',C,T)
