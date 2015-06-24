//Ex4_10 Pg-238
clc

f=60 //frequency in Hz
C=100*10^(-6) //capacitance in F
Rl=1*10^3 //load resistance

disp("Since the transformer is center tapped ,the rms value of voltage across half the secondary coil")
Vct=12.6 //voltage of center tapped transformer
Vrms=Vct/2 //rms voltage

disp("Peak voltage")
Vm=Vrms*sqrt(2) //peak voltage
printf("        = %.2f V\n ",Vm)

disp("(b) DC output voltage")
Vdc=Vm/(1+(1/(4*f*C*Rl))) //DC output voltage
printf("        = %.2f V \n ",Vdc)

disp("Ripple factor in case of capacitor filter ")
disp("          =2410/C*Rl")
r=2410/(100*Rl)*100 //ripple factor
printf("\n           = %.1f %%\n ",r)
