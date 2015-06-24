//Example 7-4,Page No - 233

clear
clc

Vm = 1
Vin = 0.25
mu =255

Vout = (Vm*log(1+mu*(Vin/Vm)))/log(1+mu)
gain =Vout/Vin

printf('The output voltage of the compander %.2f volt',Vout)
printf('\n Gain of the compander is %d',gain)
