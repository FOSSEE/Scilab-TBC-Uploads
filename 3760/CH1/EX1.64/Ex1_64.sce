clc;
r=60; // resistive load which is coupled to electronic circuit
v=5; R=3000;  // electronic circuit represented by a voltage source in series with a internal resistance
// for maximum transfer of power, load resistance referred to primary must be equal to internal resitance of source 
k=sqrt(R/r);
printf('turns ratio for maximum transfer of power is %f\n',k);
// referrig all quantities to load side 
vl=v/k; // source voltage referred to load side
Rl=R/k^2; // source referred to load side
il=(vl/(Rl+r))*1000 ; // load current
vld=(il*r)/1000; // load voltage
p=(il^2*r)/1000; // load power
printf('load voltage is %f v\n',vld);
printf('load current is %f mA\n',il);
printf('load power is %f mW\n',p);



