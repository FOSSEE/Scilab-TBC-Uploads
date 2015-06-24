//EX3_2 PG-3.15
clc
disp("Refer to the figure-3.8 shown")
Vin=0;//cut-in voltage for an ideal diode is zero
Rf=0;//forward resistance for an ideaal diode is zero
disp("For an ideal diode")
Vm=15;
Vdc=-Vm/%pi;
printf("\n DC output voltage is %.2f V\n ",Vdc)
disp("-ve sign indicates that voltage is negative wrt ground")
disp("For a silicon diode Vin=0.7V ")
Vin=0.7;
Vdc=-(Vm-Vin)/%pi;
printf("\n DC output voltage is %.2f V\n ",Vdc)
disp("-ve sign indicates that voltage is negative wrt ground")
