//Ex 1.40.15
clc;clear;close;
format('v',9);

//Given : 
ND=4.5*10^15;//per cm^3
A=1*10^-2;//cm^2
l=10;//cm
tau_p=1*10^-6;//sec
tau_n=1*10^-6;//sec
Dp=12;//cm^2/sec
Dn=30;//cm^2/sec
q=1.6*10^-19;//Coulomb
del_p=10^21;//electron hole pair/cm^3/sec
x=34.6*10^-4;//cm
Kdash=26;//mV(Kdash is taken as K*T/q)
ni=1.5*10^10;//per cm^3
no=ND;//per cm^3//ND<<ni
po=ni^2/no;//per cm^3
ln=sqrt(Dn*tau_n);//cm
lp=sqrt(Dp*tau_p);//cm
dpBYdx=del_p*exp(-x/lp);//per cm^4
dnBYdx=del_p*exp(-x/ln);//per cm^4
Jp=-q*Dp*dpBYdx;//A/cm^2
Ip=Jp*A;//A
disp(Ip,"Hole diffusion current (A) : ");
Jn=q*Dn*dnBYdx;//A/cm^2
In=Jn*A;//A
disp(In,"Electron diffusion current (A) : ");
//Solution is not complete in the book and value of Jp & Jn is due to wrong calculation for dpBYdx and dnBYdx.
