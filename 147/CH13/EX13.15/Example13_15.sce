close();
clear;
clc;
//rated power 'Pr'
Pr = 100*1000; //VA
V1 = 11000; //V
V2 = 2300; //V
f = 60; //Hz

//(a)
//load on open-delta 'Pl'
Pl = sqrt(3)*Pr; //VA
mprintf("(a) Total load that can be supplied = %0.1f kVA\n\n",Pl/1000);
//(b)
Pr = 120*1000; //VA
Iab = 1/3 * (Pr/V2);
//from phasor diagram 
Ia = (sqrt(3)*Iab);
//transformation ratio 'a'
a = V1/V2;
//current in V1 winding 'Iline'
Iline = Ia/a; //A
mprintf("(b) Line current on high-voltage side, Iline = %0.1f A",Iline);
