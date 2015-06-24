//Example 14.4: pulse width and spatial length 
clc;
clear;
close;
format('v',5)
disp("part (a)")
//given data :
del_v=1.5*10^9;// in Hz
tau_p=1/del_v;
C=3*10^8;// constant
disp(tau_p*10^9,"pulse width,del_v(ns) = ")
Lp=C*tau_p;
disp(Lp*10^2,"spatial length,Lp(cm) = ")
//spatial length is calculated wrong in the textbook
format('v',5)
disp("part (b)")
del_v=6*10^10;// in Hz
tau_p=1/del_v;
C=3*10^8;// constant
disp(tau_p*10^12,"pulse width,del_v(ps) = ")
Lp=C*tau_p*10^3;
disp(Lp,"spatial length,Lp(mm) = ")
