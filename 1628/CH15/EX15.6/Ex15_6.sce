
                             // Examle 15.6

po=5*746;             // O/p power
n=0.875;              // Efficiency of motor at no load
pin=round(po/n);      // I/p power
p1=pin-po;            // Total losses
pm=0.05*p1;           // Mechanical losses
pe=p1-pm;             // Electrical losses
pd=po+pm;             // Devlopment power
disp(' Devlopment power = '+string(pd)+' Watt');

f=50;                 // Frequency
p=4;                  // No.Of poles
Ns=(120*f)/p;         // Synchronous speed 
N=1470;               // No.Of Revolution in rmp
s=(Ns-N)/Ns;          // The Slip
 
pg=pd/(1-s);          // Air-gap power
disp(' Air-gap power = '+string(pg)+' Watt');

pr=s*pg;              // Rotor copper loss
disp(' Rotor copper loss = '+string(pr)+' Watt');

ps=pin-pg;           // Stator loss
disp(' Stator loss = '+string(ps)+' Watt');



             //   p 598    15.6
