//Ex4_5 Pg-221
clc

Vr=0.7 //diodes voltage drop
Rl=820 //load resistor in ohm
Vin=40 //input voltage in V

disp("(1)  Peak output volatge: Current flows through load only when two diodes conduct. While conducting, there is voltage drop across the diode.")
V_drop_2=2*Vr //voltage drop across 2 diodes
Vm=Vin-V_drop_2 //peak voltage
printf("\n       Vm = %.2f V\n ",Vm)

disp("(2) Average output current")
Idc=(2*Vm/%pi)/Rl //average output current
printf("       Idc = %.0f mA\n ",Idc*10^3)

disp("(3) Diode dissipation")
DD=Idc*Vr //Diode dissipation
printf("        = %.0f mW\n ",DD*10^3)
