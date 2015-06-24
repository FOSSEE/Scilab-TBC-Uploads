//Ex18_1 Pg-901
clc

Vs=12 //supply voltage in V
Vd=2 //forward bias voltage in V
Id=20*10^(-3) //forward bias current

Rs=(Vs-Vd)/Id //source resistor
printf("Source resistance = %.0f ohm \n",Rs)

P=Id^2*Rs //power
printf(" Wattage rating = %.1f mW",P*1e3)
disp("Therefore a standard size 0.25 watt = 250mW resistor is required")
