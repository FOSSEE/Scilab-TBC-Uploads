//Finding the currents and Voltages in the Cuk Regulator
//Example 5.8(Page No- 204) 
clc
clear
//given data
Vs = 12;//V
k = 0.25;//duty cycle
f = 25*10^3;//Hz
Ia = 1.25;//A
L1 = 180*10^-6;//H
C1 = 200*10^-6;//F
L2 = 150*10^-6;//H
C2 = 220*10^-6;//F
//part(a)
Va = (-(k*Vs)/(1-k));
printf('(a)\t The average output voltage: %d V',Va);

//part(b)
Is = ((k*Ia)/(1-k));
printf('\n (b)\t The average output current :%.2f A',Is);

//part(c)
del_I1 = ((Vs*k)/(f*L1));
printf('\n (c)\t the peak to peak ripple current of inductor L1 %.2f A',del_I1);

//part(d)
del_Vc1 = ((Is*(1-k))/(f*C1));
printf('\n (d)\t The peak to peak ripple voltage of capacitor C1 :%.2f mV',del_Vc1*10^3);

//part(e)
del_I2 = ((k*Vs)/(f*L2));
printf('\n (e)\t the peak peak ripple current of inductor L2: %0.2f A',del_I2);

//part(f)
del_Vc2 = ((del_I2)/(8*f*C2));
printf('\n (f)\t The peak to peak ripple voltage of capacitor : %.2f mV',del_Vc2*10^3);

//part(g)
Vdm = Va; // Vdm = -(Vc1*k) = Va
Il2 = Ia; // Il2 = (Ia*Va)/Vdm = Ia
Ip = Is + (del_I1/2) + Il2 + (del_I2/2);
printf('\n (g)\t Peak current of the transistor : %.3f A',Ip);


