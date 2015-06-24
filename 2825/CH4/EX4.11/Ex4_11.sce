//Ex4_11 Pg-238
clc
Vdc=9 //dc voltage
Idc=100*10^(-3) //dc load current
disp("Ripple factor with an L-C filter,r=(0.83/LC)")
disp("               where L-> Henry,C->microFarad")
gamm=0.02 //maximum ripple
LC=0.83/gamm
printf("       LC = %.1f \n ",LC) //let LC=42

disp("LOad connected to the filter,")
RL=Vdc/Idc //load resistance in ohm
printf("      RL  = %.0f ohm\n ",RL)

disp("Critical value of inductor,")
Lk=RL/900 //Critical value of inductor
printf("      Lk  = %.1f \n ",Lk)

disp("Capacitance")
LC=42 //rounding of 41.5 to 42
C=LC/Lk //capacitance in microFarad
printf("      C  = %.0f uF\n ",C)
