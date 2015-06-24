//Ex7_5 Pg-371
clc

hfe=50 //current gain
Rl=10*10^(3) //load resistor in ohm
Rs=500 //source resistor in ohm
hie=10^(3) //input resitance in ohm

A=hfe*Rl/(Rs+hie) //volatge gain
printf("Voltage gain = %.1f \n",A)
Vs=0.02 //source voltage in V
Vout=A*Vs //output voltage
printf("Output voltage = %.2f V",Vout)
