//Ex4_7 Pg-222
clc

Vi=120 //supply voltage n V
Rl=5*10^3 //load resistance

disp("Secondary RMS voltage")
Vrms=Vi/5 //Secondary RMS voltage
printf("        = %.0f V\n ",Vrms)

disp("Secondary pek voltage")
Vm=Vrms*sqrt(2) //Secondary pek voltage
printf("        = %.0f V\n ",Vm)

disp("  Half of the secondary voltage is input to the half section.")
disp("So input to the half section")
in=Vm/2 //input to the half section
printf("        = %.0f V\n ",in)

disp("Peak voltage across load")
printf("        = %.0f V\n ",in)

disp("    DC voltage across load = 17V. Since the capacitor gets changed up to peak value,")
disp("DC load current")
Vdc=in
Idc=Vdc/Rl //DC load current
printf("        = %.1f mA\n ",Idc*10^3)
