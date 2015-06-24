//EX2_16 PG-2.52
clc
Vz=6.8//nominal voltage
Pd_max=500;//zener diode power loss in mW at 40 degree celsius
D=2.6;//Derating factor in mW/degree celsius
T1=40;//Temperature in degree celsius
Izm=Pd_max/Vz;
printf("   At T=40 degree celsius maximum zener current Izm=%.2f mA\n\n",Izm)
T2=100;//Temperature in degree celsius
delta_T=T2-T1;//change in temperature
Pd_derated=Pd_max-D*delta_T
Izm=Pd_derated/Vz;
printf("   At T=100 degree celsius maximum zener current Izm=%.3f mA\n\n",Izm)
