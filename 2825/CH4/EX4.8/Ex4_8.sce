//Ex4_8 Pg-227
clc

f=50 //frequency in Hz
C=100*10^(-6) //capacitance in F
Rl=2*10^3 //load resistance
Vrms=40 //rms secondary voltage

disp("(a) Ripple factor for a full wave rectifier")
r=1/(4*sqrt(3)*f*C*Rl) //Ripple factor for a full wave rectifier
printf("        = %.3f \n ",r)

disp("(b) DC output voltage")
Vm=Vrms*sqrt(2)
Vdc=Vm/(1+(1/(4*f*C*Rl))) //DC output voltage
printf("        = %.1f V \n ",Vdc)

disp("(c) Percentage voltage regulation")
per=100/(4*f*C*Rl) //Percentage voltage regulation
printf("        = %.1f %%\n ",per)
