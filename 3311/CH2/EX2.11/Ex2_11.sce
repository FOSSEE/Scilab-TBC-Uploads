// chapter 2
// example 2.11
// Fig. E2.11
// Calculate shortest fault clearance time
// page-54-55
clear;
clc;
// given
Vm=120; // in V (sinosoidal ac supply)
integration=15; // in a^2.s (integral of square of current)
// calculate
t=integration/Vm^2; // calculation of fault clearance time
t=t*1E3; // changing unit from s to ms
printf("\n\nThe fault clearance time is \t= %.2f ms",t);