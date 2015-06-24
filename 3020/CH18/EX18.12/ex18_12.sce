clc;
clear all;
Eg=1;//bandgap in eV
//let me/mh=x
x=4;//given me/mh value 
k=1.38e-23;//boltzman constant
//formula is Ef=(Eg/2)+(3*k*T/4)*log(mh/me) fermi level
//and Ef=Ev+0.5eV so.. 
//(Ev+0.5)*1.6e-19=(Ec+Ev)/2
//at temperature T , (Ev+0.5)*1.6e-19=((3*k*T)/4)*logx
//so.. 1.6e-19=(3*k*T)/log(x)
//so.. T=4*1.6e-19/(3*k*log(x))
T=(4*0.16e-19)/(3*k*log10(x));//temperature at which fermi level is shifted to 10%
disp('K',T,'temperature at which fermi level is shifted to 10% is:')
// Wrong answer printed in textbook... checked in calculator also
