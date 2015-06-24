clc;
clear all;
lemdaT=750;//given penetration depth at T=3.5K
Tc=4.22;//given critical tempreture
T=3.5;////given tempareture
//part a
x=(T/Tc)^4;//temporary variable
lemda0=lemdaT/sqrt(1-x);//penetration depth at T=0K
disp('Angstrome',lemda0,'penetration depth at T=0K is=');
//part b
N=6.02*1e26;//given
alpha=13.55*1e3;//given
M=200.6;//given
n0=N*alpha/M;
disp('/m^3',n0,'molecular density=');
ns=n0*(1-(T/Tc)^4);//superconducting electron density
disp('/m^3',ns,'superconducting electron density=');
//Result printed wrong in book
