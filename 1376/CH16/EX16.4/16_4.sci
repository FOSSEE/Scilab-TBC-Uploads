//16.4
clc;
Eph=400/(3^0.5);
printf("\nPhase voltage=%.2f V",Eph)
P_total=(3^0.5)*400*30*cosd(30)/1000;
printf("\nTotal power=%.2f kW",P_total)