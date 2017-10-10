close();
clear;
clc;
//number of poles 'p', frequency of induction motor 'f', stator input power 'Pi', speed of motor 'n', stator copper loss 'Pc', stator core loss 'Pco', mechanical loss 'Pm'
p = 6;
f = 60; //Hz
n = 1140; //rpm
Pi = 48*1000; //W
Pc = 1.4*1000; //W
Pco = 1.6*1000; //W
Pm = 1*1000; //W
//synchronous speed 'ns'
ns = 120*f/p; //rpm
s = (ns-n)/ns;
//rotor input 'Pri'
Pri = Pi-(Pc+Pco);
//rotor output 'Pro'
Pro = (1-s)*Pri;
//motor output 'Po'
Po = Pro-Pm;
//motor efficiency 'eff'
eff = Po/Pi;
mprintf("Motor efficiency = %d %%",round(eff*100));