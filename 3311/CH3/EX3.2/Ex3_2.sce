// chapter 3
// example 3.2
// Determine the value of Vee
// page-99
clear;
clc;
// given
Re=1; // in k-ohm
Iv=5; // in mA
Vv=2; // in V (voltage at valley point)
// calculate
Ie=Iv;
Ve=Vv;
Vee=Ie*Re+Ve; // calculation of Vee
printf("The required value to switch OFF UJT is \tVee=%.f V",Vee);