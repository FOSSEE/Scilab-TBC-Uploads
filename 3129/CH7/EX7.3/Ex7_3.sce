//Finding the Voltage sharing of Series Connected Thyristors
//Example 7.3(Page No- 337)
clc
clear
//given data
n_s = 10;
Vs = 15*10^3;//V
del_Id = 10*10^-3;//A
Id2 = 10*10^-3;//A
del_Q = 150*10^-6;//C
Q2 = del_Q;
R = 56*10^3;//Ohm
C1 = 0.5*10^-6;//C

//part(a)
//the maximum steady state voltage sharing
V_DSmax = ((Vs+(n_s-1)*R*Id2)/n_s);
printf('(a) Maximum seady-state voltage sharing is %d V',V_DSmax);

//part(b)
//steady state drafting factor
DRF = 1-(Vs/(n_s*V_DSmax));
printf('\n (b) The steady state derating factor is %.2f%%',DRF*100);

//part(c)
//maximium transient voltage sharing
V_DTmax = (1/n_s)*(Vs + ((n_s-1)*Q2/C1));
printf('\n (c) The maximum transient voltage sharing is %d V',V_DTmax);

//part(d)
//transient derating factor is 
DRF = 1-(Vs/(n_s*V_DTmax));
printf('\n (d) The maximum transient derating factor is %.2f %%',DRF*100);
