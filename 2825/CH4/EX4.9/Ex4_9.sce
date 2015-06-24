//Ex4_9 Pg-237
clc

Vrms=300 //rms voltage in V
f=60 //frequency
Idc=0.2 //load current
C=10 //shunt capacitor in microFarad

Vm=Vrms*sqrt(2) //peak voltage
Vdc=(2*Vm)/%pi //Dc voltage

disp("Connected load")
Rl=Vdc/Idc //Connected load
printf("       Rl = %.0f ohm = (955.6)*sqrt(2) ohm\n",Rl)

disp("Ripple factor in case of shunt capacitor filter ")
disp("          =2410/C*Rl")
r=2410/(C*Rl) //ripple factor
printf("\n           = %.2f \n ",r)
