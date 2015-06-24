//EX3_39 Pg-3.76
clc
Vo=10;
Il_min=0;//mainimum load current
Il_max=10e-3;//maximum load current
Iz_max=50e-3;//maximum zener current
Iz_min=2e-3;//minimum zener current
Vin_min=20;//min input voltage
Vin_max=30;//max input voltage
Rl_min=Vo/Il_max;
Rmax=(Vin_min-Vo)/(Il_max+Iz_min);
printf("\n maximum resistance required is %.2f ohm \n",Rmax)
Rmin=(Vin_max-Vo)/(Il_min+Iz_max);
printf("\n minimum resistance required is %.0f ohm \n",Rmin)
printf("\n So series resistance must be selected between %.0f ohm to %.2f ohm \n",Rmin,Rmax)
