//Example 7.17 How zero location affect control law
// Obtain state feedback gain matrix for the given system

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//(a) state feedback gain matrix for zero at 2.
//Location of system Zero
z0=2;

// State space representation
Ao=[-7 1;-12 0];
Bo=[1 -z0]';
Co=[1 0];
Do=0;

// Desired poles
Pd=[1 2 4];
Pc=roots(Pd);


// State feedback gain matrix for system zero at -2.0
K=ppol(Ao,Bo,Pc)
disp(K,"K=","State feeback gain for a system with zero at 2" )
//------------------------------------------------------------------
//Location of system Zero
z0=-2.99
B=[1 -z0]';
// State feedback gain matrix for system zero...
// at -2.99 (by ackermann's formula)
exec('./acker_dk.sci', -1);
K1=acker_dk(Ao,B,Pc)
disp(K1,"K1","State feeback gain for a system with zero at -2.99")
//------------------------------------------------------------------
