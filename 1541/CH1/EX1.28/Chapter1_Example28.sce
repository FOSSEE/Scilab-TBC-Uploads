//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
A=2;//Number of parallel paths 
Z=926;//Number of conductors
P=4;//Nmber of poles
V=220;//Line voltage in V
Io=3;//No load ine current in A
If=0.8;//No load field current in A
q=(6*10^-3);//No load field flux in Wb
Ra=0.9;//Armature resistance in ohm
T=30;//Load torque in N.m

//CALCULATIONS
Ebo=(V-((Io-If)*Ra));//No load back emf in V
No=(Ebo*60*A)/(q*Z*P);//No load speed in rpm
Ia=(A*T)/(0.159*q*Z*P);//Armature current in A
IL=(Ia+If);//Load current in A
Eb=(V-(Ia*Ra));//Back emf in V
N=(Eb*60*A)/(q*Z*P);//Speed at load in rpm
R=((No-N)/No)*100;//Speed regulation in percent

//OUTPUT
mprintf('No load speed is %3.0f rpm\nSpeed at load is %3.1f rpm\nSpeed regulation is %3.2f percent',No,N,R)

//=================================END OF PROGRAM==============================
