close();
clear;
clc;
//frequency of induction motor 'f', number of poles 'p'
f1 = 60; //Hz
p = 4;
P = 120*1000; //W
f2 = 3; //Hz
s = f2/f1;
//synchronous speed 'ns'
ns = 120*f1/p; //rpm

//(a)
//rotor speed 'n'
n = (1-s)*ns; //rpm
mprintf("(a) The rotor speed, n = %d rpm\n\n",round(n));

//(b)
//rotor copper losses 'Pc'
Pc = s*P; //W
mprintf("(b) The rotor copper losses, Pc = %d kW",Pc/1000);