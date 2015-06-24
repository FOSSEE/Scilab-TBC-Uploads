//Example 7-5, Page No - 234

clear
clc

Vin = 0.8
Vm =1
mu =255

Vout = (Vm*log(1+mu*(Vin/Vm)))/log(1+mu)
gain =Vout/Vin

printf('The output voltage of the compander %.2f volt',Vout)
printf('\n Gain of the compander is %.1f',gain)
