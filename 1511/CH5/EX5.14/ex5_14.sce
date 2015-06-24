// Example 5.14 page no-308
clear
clc

gm=2500 //micro mho
vm=5 //mV
rs=7500 //ohm
x=1/(gm*10^-6) //Ohm
opr = 0.949*vm
z0=rs*x/(rs+x)
printf("\nOpen circuited output voltage, that is without considering RL\n\tV0 = %.2f mV\nOutput impedance, \n\tZ0 = %.0f Ohm",opr,ceil(z0))
V0=3000*opr/3380
printf("\n\nAC voltage across the load resistor is\n\tV0 = %.2f mV",V0)
