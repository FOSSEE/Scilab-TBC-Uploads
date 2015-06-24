//EX3_33 PG-3.70
clc
disp("Refer to the figure-3.45 shown")
Vz=6.1;//zener voltage
Iz_min=2.5e-3;//minimum zener current
Iz_max=25e-3;//maximum zener current
rZ=0;//ideal zener diode
R=2.2e3;
Rl=1e3;//loadd resistance
Il=Vz/Rl;
//For minimum input voltage(Vin_min)
Iz=Iz_min
I=Iz_min+Il;
Vin_min=Vz+I*R;
printf("\n minimum input voltage(Vin_min) is %.2f V \n",Vin_min)
//For maximum input voltage(Vin_max)
I=Iz_max+Il;
Vin_max=Vz+I*R;
printf("\n maximum input voltage(Vin_max) is %.2f V \n",Vin_max)
printf("\n range of input voltage is from %.3f V to %.2f V \n",Vin_min,Vin_max)
