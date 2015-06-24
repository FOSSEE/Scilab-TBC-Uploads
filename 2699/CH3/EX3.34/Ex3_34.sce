//EX3_34 PG-3.70
clc
Vo=5;//output voltage
Vin_min=12-3;//min input voltage
Vin_max=12+3;//max input voltage
Iz_min=10e-3;//minimum zener current
Il=20e-3;//load current
Pz=500e-3;//Zener wattage
Vz=Vo;//zener voltage
disp("Step1 : Maximum power dissipation correesponds to Iz_max")
Iz_max=Pz/Vz;
printf("\n maximum current that should flow through the zener diode is %.1f A \n",Iz_max)
disp ("Step2 : We know that Il is constant")
//for Vin_max, Iz=Iz_max
I=Il+Iz_max;
Rmin=(Vin_max-Vz)/I;
printf("\n minimum resistance required is %.2f ohm \n",Rmin)
disp("Iz is maximum when R=Rminimum")
disp("Step3 : for calculation of Rmax I must be minimum ie I=Iz_min ")
I=Il+Iz_min
Rmax=(Vin_min-Vz)/I;
printf("\n maximum resistance required is %.2f ohm \n",Rmax)
printf("\n Thus R must be greater than %.2f ohm and less than \n %.2f ohm for proper regulation \n",Rmin,Rmax)
