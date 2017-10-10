close();
clear;
clc;
f1 = 50; //Hz
p = 6;
Pi = 80*1000; //W
n = 100; //rpm
f2 = n/60; //Hz
// slip 's'
s = f2/f1;
mprintf("(i) slip, s = %0.4f\n\n",s);
ns = 120*f1/p; //rpm
//rotor speed 'n'
n = ns*(1-s);
mprintf("(ii) motor speed, n = %0.2f rpm\n\n",n);
//mechanical power developed 'Pd'
Pd = Pi*(1-s);
mprintf("(iii) mechanical power developed, Pd = %0.3f kW\n\n",Pd/1000);
//rotor copper loss 'Pc'
Pc = s*Pi;
mprintf("(iv) rotor copper loss, Pc = %0.3f kW\n\n",Pc/1000);

w = 2*%pi*n/60;
//torque developed 'Td'
Td = Pd/w;
mprintf("(v) Torque developed, Td = %0.2f Nm",Td);