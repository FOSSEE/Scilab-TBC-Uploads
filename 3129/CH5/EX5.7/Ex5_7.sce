//Finding the currents and Voltages in the Buck-Boost Regulator
//Example 5.7(Page No- 198) 
clc
clear
//given data
Vs = 12;//V
k = 0.25;//duty cycle
Ia = 1.25;//A
f = 25*10^3;//Hz
L = 150*10^-6;//H
C = 220*10^-6;//F
//part(a)
Va = -(Vs*k)/(1-k);
printf('(a)\t The Average output voltage: %d V',Va);

//part(b)
del_Vc = (Ia*k)/(f*C);
printf('\n (b)\t The peak to peak output ripple voltage is %.1f mV',del_Vc*10^3);

//part(c)
del_I = (Vs*k)/(f*L);
printf('\n (c)\t The peak to peak inductor ripple is %.1f A',del_I);

//part(d)
Is = (Ia*k)/(1-k); // Average input current 
Ip = (Is/k) + (del_I/2);
printf('\n (d)\t The peak current of transistor :%.3f A',Ip);

//part(e)
R = (-Va/Ia);
Lc = (((1-k)*R)/(2*f));
Cc = (k/(2*f*R));
printf('\n (e)\t The critical value of L: %d uH',Lc*10^6);//Ans. given in the textbook is wrong it should be 48 uH
printf('\n \t The critical value of C: %.2f uF',Cc*10^6');


