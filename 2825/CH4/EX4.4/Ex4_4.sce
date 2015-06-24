//Ex4_4 Pg-220
clc

Rl=3.5*10^(3) //resistance in k-ohm
rF=800 //secondary resistance in k-ohm
Vm=240 // input voltage
disp("(1)(a) Peak value of current flowing")
Im=Vm/(rF+Rl) //peak current
printf("       Im = %.2f mA\n ",Im*10^3)

disp("(b) Average or DC current flowing")
Idc=Im/%pi //DC current
printf("       Idc = %.2f mA\n ",Idc*10^3)

disp("(c) R.M.S value of current flowing")
Irms=Im/2 //rms current
printf("       Irms = %.2f mA\n ",Irms*10^3)

disp("(2) DC output power")
Pdc=(Idc)^2*Rl //dc output power
printf("       Pdc = %.1f Watt\n ",Pdc)

disp("(3) AC input power")
Pac=(Irms)^2*(rF+Rl)
printf("       Pac = %.2f Watt\n ",Pac)

disp("(4)Efficiency of rectifier")
n=(Pdc/Pac)*100 //efficiency
printf("       n = %.2f %%\n ",n)
