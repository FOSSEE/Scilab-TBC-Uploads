//EX2_17 PG-2.52
clc
printf("Refer to the figure-2.51 shown\n")
printf(" We apply KVL across the circuit \n")
printf(" Therefore -Iz*R1-Vz+Vin = 0 \n")
Vin=15;
Vz=5.2;
R1=670;
Iz=(Vin-Vz)/R1;//zener diode current
Iz=Iz*1e3;//in mA
Pd=Vz*Iz;//power dissipation
printf(" \n zener diode current Iz:%f mA\n power dissipation :%f mW ",Iz,Pd)
