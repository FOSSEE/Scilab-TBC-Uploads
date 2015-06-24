clc;clear;
//Example 18.6
//calculation of conductivity of intrinsic and doped semiconductors

//given values
h=4.52*10^24;//no of holes per m^3
e=1.25*10^14;//no of electrons per m^3
ue=.38;//e mobility
uh=.18;//hole mobility
q=1.6*10^-19;//charge of e in C
//calculation
ni=sqrt(h*e);//intrinsic concentration
ci=q*ni*(ue+uh);
disp(ci,'conductivity of semiconductor(in S/m) is');
cp=q*h*uh;
disp(cp,'conductivity of doped semiconductor (in S/m) is');