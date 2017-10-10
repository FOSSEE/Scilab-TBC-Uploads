close();
clear;
clc;
//meter resistance 'rm', meter current 'Ifs', Maximum current to be measured 'I', Maximum voltage measured 'V'
rm = 5; //ohm
Ifs = 0.015; //A

//(i)
I = 2; //A
//resistance of shunt required 'Rsh'
Rsh = Ifs*rm/(I-Ifs); //ohm
mprintf("(i) Resistance of shunt, Rsh = %0.6f ohm\n\n",Rsh);

//(ii)
V = 100; //V
//series resistance 'Rse'
Rse = V/Ifs - rm; //ohm
mprintf("(ii) The value of series resistance, Rse = %0.3f ohm",Rse);