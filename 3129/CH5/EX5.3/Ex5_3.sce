//Finding the load inductance to limit the load Ripple current
//Example 5.3(Page No- 175) 
clc
clear
//given data
Vs = 550;//V
R = 0.25;//Ohm
E = 0;//V
f = 250;//Hz
T = 1/f;
Ia = 200;//A
del_i = Ia*(10/100);//Current is limited to 10% of Ia
// d(del_I)/dk = 0
//gives k = 0.5
k = 0.5;

L = (Vs*(1-k)*k*T)/del_i ;
printf('Required value of inductance L: %.2f mH',L*10^3);
