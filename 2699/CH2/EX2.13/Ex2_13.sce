//EX2_13 PG-2.48
clc
PD_max=320e-3;//maximum power rating
T1=50;//temperature in degree celsius at which maximum power rating occurs
DF=2.3e-3;//Derating factor
disp("Therefore the derated power rating at a temperature T=100 Degree celsius")
T2=100;
PD=PD_max-DF*(T2-T1);
printf("\n is %.3f W",PD)
