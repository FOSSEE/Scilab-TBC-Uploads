//EX3_3 PG-3.16
clc
Rl=1;//load resistance in kohm
Vm=10;
disp("For an ideal diode Vin= 0V")
Vin=0;//for ideal diode
Rf=0;//for ideal diode
Edc=Vm/%pi;
Idc=Edc/Rl;
printf("\n Dc voltage is %.2f V and load current is %.2f mA \n",Edc,Idc)
disp("For a silicon diode Vin=0.7 V")
Vin=0.7;
Edc=(Vm-Vin)/%pi;
Idc=Edc/Rl
printf("\n Dc voltage is %.2f V and load current is %.2f mA \n",Edc,Idc)
