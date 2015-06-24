//Ex7_3 Pg-369
clc

Beta=250 //transistor gain
Vcc=15 //supply voltage
R1=2000 //resistor R1 in ohm
R2=470 //resistor R2 in ohm
Vce=0.7 //voltage drop in V
Re=220 //emitter resistor in ohm

Vb=(Vcc*R2)/(R1+R2) //base voltage in V
disp("(1) Base voltage Vb")
printf("            = %.2f V",Vb)
Ve=Vb-Vce //emitter voltage in V
disp("Emitter voltage Vb")
printf("            = %.2f V",Ve)
Ie=Ve/Re //emitter current
disp("Emitter current ")
printf("          Ie  = %.3f*10^-2 A",Ie*10^2)
disp("For small signal operation, ie <= 0.1*Ie")
ie=0.1*Ie 
printf("            =%.3f mA \n",ie*10^3)

disp("(2) AC emitter diode resistance =25mV/ie")
Re_ac=25*10^(-3)/ie //AC emitter diode resistance
printf("                             =%.0f ohm \n",Re_ac)

disp("(3) Z''vm = Beta*r''e")
Re_ac=26 //AC emitter diode resistance assumed 26 ohm not 25.53 ohm
Zvm=Beta*Re_ac
printf("          =%.0f ohm",Zvm)
