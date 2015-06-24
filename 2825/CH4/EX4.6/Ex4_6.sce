//Ex4_6 Pg-222
clc

Vr=0.7 //voltage drop
Vi=120 //input voltage
disp("RMS value of secondary voltage")
V_sec=Vi/5 //RMS value of secondary voltage
printf("        = %.0f V\n ",V_sec)

disp("Peak secondary voltage")
Vm=V_sec*sqrt(2) //Peak secondary voltage
printf("        = %.0f V\n ",Vm)

disp("Peak inverse voltage of diode")
Vinv=-(Vm) //Peak inverse voltage of diode
printf("        = %.0f V\n ",Vinv)

printf("\n Peak load voltage =%.0f V\n ",Vm)

disp("DC load voltage")
Vdc=Vm/%pi //DC load voltage
printf("        = %.1f V\n ",Vdc)

disp("Assuming second approximation")
disp("Vm'' = Vm - Vr ")
disp("Peak load voltage")
Vm_dash=Vm-Vr //Peak load voltage
printf("        = %.1f V\n ",Vm_dash)

disp("DC load voltage")
Vdc=Vm_dash/%pi //DC load voltage
printf("        = %.1f V\n ",Vdc)
