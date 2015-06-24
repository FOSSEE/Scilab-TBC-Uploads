//EX3_6 PG-3.29
clc
disp("Refer to the figure-3.16 shown")
Rl=100;
Idc=1;//maximum value of DC current in each diode
disp("We know Idc=Im/pi for each diode")
Vm=%pi*Rl*Idc;
Vp=2*Vm;
printf("\n maximum peak to peak voltage is %.2f V" ,Vp)
