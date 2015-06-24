//Ex6_3 Pg-336
clc

Rb=200*10^(3) //base resistance in ohm
Vcc=10 //supply voltage in V
Vbe=0.7 //voltage drop in V
Rl=2*10^(3) //load resistor in ohm
Beta=50 //transistor gain

disp("If Beta=50")
Ib=(Vcc-Vbe)/Rb //base current in A
Ic=Beta*Ib //collector current
Vce=Vcc-Ic*Rl //collector emitter voltage
printf("\n The operating point coordinates are [%.2f V, %.2f mA]\n ",Vce,Ic*10^3)

disp("If Beta=60")
Beta2=60 //second transistor gain 
Ic2=Beta2*Ib //collector current
Vce2=Vcc-Ic2*Rl //collector emitter voltage
printf("\n The operating point coordinates are [%.2f V, %.2f mA]\n ",Vce2,Ic2*10^3)

