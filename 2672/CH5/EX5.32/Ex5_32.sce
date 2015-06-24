//Example 5_32
clc;
clear;
close;
format('v',6);
//given data : 
Vz=5;//V
Pmax=250;//mW
Vs=15;//V(Supply voltage)
PL=50;//W(Load)
Imax=Pmax/Vz;//mA(Maximum permissible current)
//Minimum current to maintain constant voltage
Imin=Imax-Imax*10/100;//mA
Rmin=Vs/Imax;//kohm
Rmax=Vs/Imin;//kohm
disp("For maintainng constant voltage, Range of R is "+string(Rmin)+" kohm to "+string(Rmax)+" kohm.");
//Diode loaded with 50W load
Imax=PL/Vz;//mA(Maximum permissible current)
//Minimum current to maintain constant voltage
Imin=Imax-Imax*10/100;//mA
Rmin=Vs/Imax;//kohm
Rmax=Vs/Imin;//kohm
disp("New range of R is "+string(Rmin)+" kohm to "+string(Rmax)+" kohm.");
//Solution is not complete in the textbook. 
