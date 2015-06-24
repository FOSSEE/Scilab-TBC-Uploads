//Ex2_3 Pg-2-22
clc
clear;
disp(" Refer to the figure-2.24 shown ")
disp(" since Rf=0 The circuit becomes as shown in figure-2.24(a)")
V=10;//supply voltage
Rf=0;//forward resistance
Rl=1;//load resistance in k ohm
Vin=0.7;//cut in voltage
Il=(V-Vin)/Rl;//applying KVL to the loop
If=Il;
printf("\n \n current through the resistance Il=If = is %.1f mA",If)
Vl=Il*Rl;
printf("\n \n voltage across Rl is %.1f V",Vl)
Pd=If*Vin;
printf("\n \n diode power Pd = %.2f mW",Pd)
Pl=Il*Vl;
printf("\n \n load power Pl = %.2f mW",Pl)
