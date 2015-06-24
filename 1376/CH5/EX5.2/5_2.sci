//5.2
clc;
V_per_cm=1.0186/60;
//When S is replaced by a dry cell we get PK=85 cm for null deflection
Dpk=85;
V_dry_cell=Dpk*V_per_cm;
printf("Voltage of dry cell=%.2f V",V_dry_cell)