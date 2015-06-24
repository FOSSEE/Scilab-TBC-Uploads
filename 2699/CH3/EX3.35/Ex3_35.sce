//EX3_35 PG-3.72
clc
disp("refer to the figure-3.47 shown")
Vz=10;//output voltage
Vin=20;//input voltage
Iz_max=25e-3;//maximum zener current
Iz_min=5e-3;//minimum zener current
R=300;
Rz=0;//zener resistance
I=(Vin-Vz)/R;
//for Il_min Iz=Iz_max
Il_min=I-Iz_max;//minimum load current
printf("\n minimum load current is %.2f mA \n",Il_min*1e3)
//for Il_max, Iz=Iz_min
Il_max=I-Iz_min;//maximum load current
printf("\n maximum load current is %.2f mA \n",Il_max*1e3)
Rl_min=Vz/Il_max;//minimum load resistance
printf("\n minimum load resistance is %.3f ohm \n",Rl_min)
// in the book in the question it given that Iz_max=50mA
//but during the solution Iz_max is taken as 25mA I have taken Iz_max=25mA
// in this program 
