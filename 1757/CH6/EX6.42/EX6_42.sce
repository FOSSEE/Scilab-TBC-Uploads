//Example6_42  // determine the time constant of an integrator
clc;
clear;
close;
Vo = 10 ;  // at t= 1 m sec
t = 1 ; // m sec

// the output of integrator 
//Vo = t/RC ; when t is from 0 to 1
RC = t/Vo ;
disp(' At t = 1 msec the time constant RC is = '+string(RC)+ ' m sec');

disp (' if C = 0.01 uF then R of RC time constant is = 10 K ohm ');

disp (' if C = 0.001 uF then R of RC time constant is = 100 K ohm ');
