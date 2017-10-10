clear;
clc;
TJ_max=150 //in C
Tamb=27 //in C
Rth_dp=1.7 //Thermal resistance in C/W
Rth_pa=40 //in C/W
Rth_ps=1 //in C/W
Rth_sa=4 //in C/W

//Calculation
PD1_max=(TJ_max-Tamb)/(Rth_dp+Rth_pa)
PD2_max=(TJ_max-Tamb)/(Rth_dp+Rth_sa+Rth_ps)

mprintf("Case(a):No heat sink used :-Maximum power distribution= %1.2f W\n",PD1_max)
mprintf("Case(b):Heaat sink used :- Maximum power distribution= %2.2f W",PD2_max)
