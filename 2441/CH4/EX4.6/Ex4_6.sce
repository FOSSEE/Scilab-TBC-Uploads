//Exa 4.6
clc;clear;close;
format('v',7);
G=200;//MVA
H=6;//MJ/MVA///Inertia Constant
V=11;//kV
f=50;//Hz
L1=120;//MW
L2=160;//MW

//Calculation
disp("Part(a)");
Es=G*H;//MJ////Stored Energy
disp(Es,"Stored energy(MJ)");
disp("Part(b)");
Pa=L1-L2;//MW
M=G*H/180/f;//MJ-sec/elect.deg.
alfa=-Pa/M;//elect.deg./sec^2///Retardation
disp(alfa,"Motor retardation(elect.deg.sec^2)");
disp("Part(c)");
n=5;//cycles
t=n/f;//sec
del_change=1/2*-alfa*t^2;//elect.deg.
disp(del_change,"Change in power angle(elect.deg.)");
alfa=alfa*60/(180*4);//rpm/sec
ns=1500;//rpm
nr=ns+(-alfa)*t;//rpm;///rotor speed
disp(nr,"Rotor speed at the end of 5 cycle(rpm)");
disp("Part(d)")
H2=4;//MJ/MVA
G2=150;//MVA
Gb=100;//MVA
Heb=H*G/Gb+H2*G2/Gb;//MJ/MVA
disp(Heb,"Inertia constant for the equivalent generator(MJ/MVA)");
