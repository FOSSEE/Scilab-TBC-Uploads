//Finding the values of LC filter for the Buck Regulator
//Example 5.5(Page No- 190) 
clc
clear
//given data
Vs = 12;//V
del_V = 20*10^-3;//V
del_I = 0.8;//A
f = 25*10^3;//Hz
Va = 5;//V
R = 500;//Ohm

//part(a)
k = Va/Vs;
k_per = k*100;
printf('(a)\t The duty cycle: %0.4f or %0.2f %%',k,k_per);

//part(b)
L = ((Va*(Vs-Va))/(f*del_I*Vs));
printf('\n (b)\t filter inductance: %.2f uH',L*10^6);

//part(c)
C = (del_I/(8*f*del_V));
printf('\n (c)\t The filter Capacitance: %d uF',C*10^6);

//part(d)
Lc = (((1-k)*R)/(2*f));
printf('\n (d)\t The Critical inductance : Lc %.2f mH',Lc*10^3);

Cc = (1-k)/(16*L*f^2);
printf('\n \t The critical Capacitance Cc : %.1f uF',Cc*10^6);



