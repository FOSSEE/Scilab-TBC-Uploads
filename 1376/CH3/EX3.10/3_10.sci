//3.10
clc;
E_unity_pf=230*6*4*1/1000;
M_constant=2208/E_unity_pf;
printf("Meter constant=%.1f rev/kWh",M_constant)
E_consumed=1472/M_constant;
pf=(E_consumed/(230*5*4))*1000;
printf("\npower factor=%.2f",pf)