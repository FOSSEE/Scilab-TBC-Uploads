//EX3_41 PG-3.79
clc
Pd=400e-3;
Vz=8.1;//output voltage
Vo=Vz;
Zz=8;
Vin=15;
Izm=Pd/Vz;
Rmax=(Vin-Vz)/Izm;
printf("\n maximum series resistance is %.3f ohm \n",Rmax)
Iz_min=5e-3;//we select the minimum zener current
Il_max=Izm-Iz_min;//maximum load current
printf("\n maximum load current is %.7f A \n",Il_max)
Rl=Vz/Il_max;//load resistance
deltaVin=.1*Vin;//change in input voltage is equal to 10% of the original input voltage
R=Rmax;//series resistance
x=(Rl*Zz)/(Rl+Zz);
deltaVo=(deltaVin*x)/(R+x);
Sv=deltaVo/deltaVin;//voltage stability factor 
printf("\n voltage stability factor  is %.3f \n",Sv)
SR=deltaVo/Vo*100;// line regulation for a 10% change in Vin
printf("\n line regulation is %.4f %% \n",SR)
deltaIL=Il_max;
y=(R*Zz)/(R+Zz)
deltaVo=deltaIL*y;
LR=deltaVo/Vo*100;//load regulation  
printf("\n load regulation is %.4f %% \n",LR)
z=(Rl*Zz)/(Rl+Zz)
RR=z/(R+z);//ripple rejection ratio
printf("\n ripple rejection ratio is %.3f \n",RR)
Ro=y;//output resistance
printf("\n output resistance is %.3f ohm \n",Ro)
