// chapter 3
// example 3.1
// fig. E3.11
// Determine the trigger angle
// page-87
clear;
clc;
// given
Ig=0.1; // in mA (minimum gate current)
Vg=0.5; // in V (minimum gate voltage)
Emax=24; // in V (peak amplitude of input)
Rv=100; // in k-ohm
Rmin=10; // in k-ohm
Vd=0.7; // in V (threshold voltage for diode)
// calculate
e_s=Ig*(Rv+Rmin)+Vd+Vg;  // Applying KVL in the loop
// since e_s=Emax* sin(alpha)
alpha=asind(e_s/Emax); // calculation of trigger angle
printf("The trigger angle is \t %.1f degree",alpha);