clc;
close();
clear();
//page no 484
//prob no. 14.10
ZL=100;   //ohm
RL=ZL;
R0=300;    //ohm
TauL=(RL-R0)/(RL+R0);

mprintf('(a)The reflection coefficient at load is=  %0.2f,',TauL);

S=R0/RL;
mprintf('\n (b) The standing wave ratio is, S = %.0f \n',S);
