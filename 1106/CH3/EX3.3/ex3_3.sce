// Example 3.3, page no-108
clear
clc

Iref=0.000715
Vbe19=0.7
Is18=10^-14
Is19=10^-14
R10=50000

Is14=2*10^-14
Is20=2*10^-14

Ic13a=0.25*Iref
Vbe=0.7
Ir10=Vbe19/R10
Ic19=Ic13a-Ir10
Vbe19=0.612
Beta=200

Ib19=Ic19/Beta
Ic18=Ir10+Ib19
Vbe18=0.549
Vbb=Vbe18+Vbe19
printf('Vbb= %.3f V', Vbb)
Ic14=Is20*exp(Vbb/2*0.026)
Ic14=Ic14*10^15/0.2042
printf('\nIc14= %.2f uA', Ic14)


