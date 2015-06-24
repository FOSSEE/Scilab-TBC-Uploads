//16.10
clc;
P_consumed=3000/3;
E_per_phase=440/(3^0.5);
IL=P_consumed/E_per_phase;
printf("\nCurrent in each line=%.2f A",IL)
R=E_per_phase/IL;
printf("\nResistance of resistor=%.2f ohm",R)