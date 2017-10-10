clc;
P=5000; // rated VA of transformer
pc=40; // core loss , it remains fixed for whole day
poh=100; // ohmic losses 
// data for duration 7 A.M to 1 P.M
p1=3000; // power consumed
pf1=0.6 // power factor of load
pk1=p1/pf1; // VA load
poh1=poh*(pk1/P)^2; // ohmic losses for given duration
// data for duration 1 P.M to 6 P.M
p2=2000; // power consumed
pf2=0.8 // power factor of load
pk2=p2/pf2; // VA load
poh2=poh*(pk2/P)^2; // ohmic losses for given duration
// data for duration 6 P.M to 1 A.M
p3=6000; // power consumed
pf3=0.9 // power factor of load
pk3=p3/pf3; // VA load
poh3=poh*(pk3/P)^2; // ohmic losses for given duration
// data for duration 1 A.M to 7 A.m =no load
poht=poh1*6+poh2*5+poh3*7; // energy lost in ohmic losses
pct=(pc*24); // daily energy lost as core loss
ptl=poht+pct; // total energy lost
po=p1*6+p2*5+p3*7; // output
n=(1-(ptl/(ptl+po)))*100; 
printf('All day efficiency is %f percent',n);
