//EX3_38  Pg-3.75
clc
Vo=5;
Il=20e-3;
Pz=500e-3;
Rl=Vo/Il;
Il_min=Il;//minimum load current
Il_max=Il;//maximum load current
Iz_max=Pz/Vo;//maximum zener current
Iz_min=5e-3;//minimum zener current
V=12;//input DC voltage
Vin_min=12-3;//min input voltage
Vin_max=12+3;//max input voltage
Rmax=(Vin_min-Vo)/(Il_max+Iz_min);
printf("\n maximum resistance required is %.0f ohm \n",Rmax)
Rmin=(Vin_max-Vo)/(Il_min+Iz_max);
printf("\n minimum resistance required is %.2f ohm \n",Rmin)
printf("\n So series resistance must be selected between %.2f ohm to %.0f ohm \n",Rmin,Rmax)
