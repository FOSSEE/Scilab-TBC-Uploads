//Example 4_12
clc;
clear;
close;
format('e',9)
//given data : 
h=1.05*10^-34;//Js//Planks Constant
e=1.6*10^-19;//C///Charge on electron
mc=0.067;//mo
mc=mc*0.91*10^-30;//kg
E0=1;//kV/cm
E0=E0*10^3/10^-2;//V/m
//Part (a)
tau_sc=10^-13;//s
v0=e*tau_sc*E0/mc;///m/s
v0=v0*100;//cm/s
disp(v0,"(a) Drift velocity(cm/s)");
//Part (b)
tau_sc=10^-12;//s
v0=e*tau_sc*E0/mc;///m/s
v0=v0*100;//cm/s
disp(v0,"(b) Drift velocity(cm/s)");
//Part (c)
tau_sc=10^-11;//s
v0=e*tau_sc*E0/mc;///m/s
v0=v0*100;//cm/s
disp(v0,"(c) Drift velocity(cm/s)");
