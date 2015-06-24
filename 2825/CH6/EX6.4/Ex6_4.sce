//Ex6_4 Pg-335
clc

Rb=330*10^(3) //base resistance in ohm
Vcc=15 //supply voltage in V
Vbe=0.7 //voltage drop in V
Rl=3.3*10^(3) //load resistor in ohm
Beta=60 //transistor gain

Ib=(Vcc-Vbe)/Rb //base current in A
Ic=Beta*Ib //collector current (value in textbook is wrong)
Vce=Vcc-(Ic+Ib)*Rl 
printf("\n The collector emitter voltage = %.2f V\n ",Vce)
//collector emitter voltage (value in textbook is wrong) 
