//Chapter-9, Example 1.9, Page 1.20
//=============================================================================
clc
clear

//INPUT DATA
P=4;//Number of poles
A=2;//Number of parallel paths for wave wound
Z=400;//Number of conductors
q=(20*10^-3);//Flux per pole in Wb
Ra=0.04;//Armature resistance in ohm
Rsh=75;//Shunt field resistance in ohm
V=250;//Terminal voltage in V
PL=(600*100);//Total load on the generator in W
Vld=10;//Line drop in V

//CALCULATIONS
IL=(PL/V);//Load current in A
Ish=(V/Rsh);//Shunt field current in A
Ia=(IL+Ish);//Armature current in A
Eg=(V+(Ia*Ra)+Vld);//Generated emf in V
N=(60*Eg*A)/(q*Z*P);//Speed at which the generator should be driven in rpm

//OUTPUT
mprintf('Speed at which the generator should be driven is %i rpm',N)

//=================================END OF PROGRAM==============================
