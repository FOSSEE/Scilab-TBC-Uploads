close();
clear;
clc;
//TTime period of sine wave 'T'
Rl = 2000; //ohm
T = 2*%pi; //rad
t1 = 0.14;
t2 = 3;
Vf = 0.7; //V
function Vs = vs(t)
  Vs = 10*sin(t);
endfunction
function V = v(t)
  V = -2*Vf+vs(t);
endfunction
//Avergae voltage 'Vlavg'
Vlavg = 2/T * intg(t1,t2,v); //V
//By ohm's law
//average value of load current 'Ilavg'
Ilavg = Vlavg/Rl; //A
mprintf("Average load current, Ilavg = %0.3f mA",Ilavg*1000);