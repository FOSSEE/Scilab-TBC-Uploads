close();
clear;
clc;
//frequency of induction motor 'f', number of poles 'p', speed of motor 'n'
n = 3510; //rpm
f = 60; //Hz
p = 2;

//(a)
//synchronous speed 'ns'
ns = 120*f/p; //rpm
mprintf("(a) The synchronous speed, ns = %d rpm\n\n",ns);
//(b)
//percent slip 's'
s = (ns-n)/ns;
mprintf("(b) The percent slip, s = %0.1f %%",s*100);