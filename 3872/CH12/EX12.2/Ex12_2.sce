//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 12 ; Example 12.2
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

KQi=0.4;
KVi=40;
XIqmax=1.45;
XIqmin=0.5;
Vmax=1.1;
Vmin=0.9;

Tr=0;
Ka=100;
Ta=0.05;
Vrmax=5;
Vrmin=-5;
Ke=1;
Te=0.26;
Kf=0.01;
Tf=1;
vt=0.5;
Vf=0;                   //Initial value of vf
Vref=1.0239;            //Initial value of Vref from Example 11.12
Isorq=-XIqmax/0.8;      // Reactive component of Isorc
Qcmd=0.22;              //Obtained from Example 11.12
Qnet=(vt)*abs(Isorq)-(vt)^2/0.8;   // Net reactive power injection in pu

printf('The initial value of reference voltage is %.4f pu\n',Vref)
printf('The initial value of reactive power Qcmd = %.4f pu = %.4f Mvar\n',Qcmd,Qcmd*100)
printf('The maxximum net reactive power Qnet = %.4f pu = %.4f Mvar\n',Qnet,Qnet*100)

