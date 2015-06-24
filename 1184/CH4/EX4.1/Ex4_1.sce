//Example 4-1, Page No - 129

clear
clc

Vcc =48
I = 3.5
effi_percent=70
modulation_percent= 67 
m = modulation_percent/100

Pi = Vcc*I
Pc=Pi
Pm = Pi/2
Pout = (effi_percent*Pi)/100
Ps = Pc*((m^2)/4)
max_swing = 2*Vcc 

printf('The input power is %.1f watt \n AF power required for the 100 percent modulation is %.1f watt \n The carrier output power is %.1f watt\n', Pi,Pm,Pout) 
printf('The power in one sideband %.2f watt \n Maximum swing = %.1f volt\n Minimum swing =0.0 volt',Ps,max_swing)
