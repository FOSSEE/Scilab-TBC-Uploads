//TO Determine (i)sustained short circuit current in the breaker (ii)initial symmetrical r.m.s current in the breaker (iii)maximum possible d.c component of the short circuit current in the breaker (iv)momentary current rating of the breaker (v)the current to be interrupted by the breaker (vi)the interupting kVA.
clear
clc;
MVA=10;
Is=MVA*1000/(sqrt(3)*13.8);
mprintf("(i)sustained short circuit current in the breaker =%.0f amps\n",Is);
MVA1=100;
Isc=MVA1*1000/(sqrt(3)*13.8);
mprintf("(ii)initial symmetrical r.m.s current in the breaker r.m.s=%.0f amps\n",Isc);
Im=sqrt(2)*Isc;
mprintf("(iii)maximum possible d.c component of the short circuit current in the breaker =%.0f amps\n",Im);
Im2=1.6*Isc;
mprintf("(iv)momentary current rating of the breaker=%.0f amps\n",Im2);
Ib=1.2*Isc;
mprintf("(v)the current to be interrupted by the breaker =%.0f amps\n",Ib);
KVA=sqrt(3)*13.8*5016;
mprintf("(vi)the interupting =%.0f KVA\n",KVA);
//Answers don't match due to difference in rounding off of digits
