//EX3_40  Pg-3.76
clc
Vo=24;
Il_min=0;//minimum load current
Pz=600e-3;
Vin=32;//input voltage
Iz_max=Pz/Vo;
Rmin=(Vin-Vo)/(Il_min+Iz_max);
printf("\n minimum resistance required is %.0f ohm \n",Rmin)
printf("\n As Vin and Il are not changing R=Rmin=%.0f ohm\n is sufficient to work as a regulator\n",Rmin)
disp("For Rl=1200 ohm")
Rl=1200;
Il=Vo/Rl;
printf(" \n load current is: %.2f A \n",Il)
R=Rmin
It=(Vin-Vo)/R;
Iz=It-Il;
printf("\n zener current is :%.3f A \n",Iz)
printf(" As Iz=Iz_min=%.3f A, the circuit will work as a regulator",Iz)
