//Example 9.8.b //final charging current
clc;
clear;
close
n=50;// no. of cells
Vc=250;// in volts
Vd=1.8;//in volts
Vcs=2.2;//in volts
r=0.01;//internal resistance of each cell in ohms
rl=0.1;//lead resistance in ohms
Re=19.4;//external resitance in ohms
Ib=n*r;// internal resistnce of battery
Tb=rl+Ib;//total resistance of battery
Eb=Vd*n;//total rmf of battery
Ebf=Vcs*n;//emf of the battery at the end of charging
I=(Vc-Ebf)/(Re+Tb);// initial charging current in amperes
disp(I,"final charging current in amperes is")
