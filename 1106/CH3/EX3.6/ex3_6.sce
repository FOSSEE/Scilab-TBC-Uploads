// Example 3.6, page no-117
clear
clc

Rf=10*10^3
R1=2*10^3
Vos=5*10^-3
Ios=50*10^-9
Ib=200*10^-9
Ta=25

// without compensating resistor
Vot=(1+Rf/R1)*Vos + Rf*Ib
Vot=Vot*1000
printf('Vot= %.1f mV', Vot)


// with compensating resistor
Vot=(1+Rf/R1)*Vos + Rf*Ios
Vot=Vot*1000
printf('\nVot= %.1f mV', Vot)


