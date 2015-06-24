//Finding the currents and Voltages in the Boost Regulator
//Example 5.6(Page No- 194) 
clc
clear
//given data
Vs = 5;//V
Va = 15;//V
f = 25*10^3;//Hz
L = 150*10^-6;//H
C = 220*10^-6;//F
Ia = 0.5;//A

//part(a)
k = 1-(Vs/Va);
printf('(a)\t The duty cycle k:%.2f or %.2f%%',k,k*100);

//part(b)
del_I = (((Va-Vs)*Vs)/(f*L*Va));
printf('\n (b)\t The ripple current of inductor: %.2fA',del_I);

//part(c)
Is = Ia/(1-k);
I2 = Is + (del_I/2);
printf('\n (c)\t The peak current of inductor: %0.3f A',I2);

//part(d)
del_Vc = (Ia*k)/(f*C);
printf('\n (d)\t The ripple voltage of filter capacitor %.2f mV',del_Vc*10^3);

//part(e)
R = Va/Ia ;
Lc = ((1-k)*(k*R)/(2*f));
Cc = (k/(2*f*R));
printf('\n (e)\t The critical value of inductance Lc: %d uH',Lc*10^6);
printf('\n \t The critical value of Capacitance Cc: %0.2f uF',Cc*10^6);
