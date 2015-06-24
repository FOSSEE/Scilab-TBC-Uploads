//Ex 1.40.24
clc;clear;close;
format('v',9);

//Given : 
Kdash=0.0259;//constant(taken as K*T/q)
A=0.5;//cm^2
Na=10^17;//per cm^3
ni=1.5*10^10;//per cm^3
delta_p=5*10^16;//per cm^3
x=1000;//Angstrum
mu_p=500;//cm^2/V-s
tau_p=10^-10;//sec
q=1.6*10^-19;//Coulomb

Dp=Kdash*mu_p;//cm/s
Lp=sqrt(Dp*tau_p);//cm
p0=Na;//per cm^3
p=p0+delta_p*exp(x*10^-8/Lp);//per cm^3
delE1=log(p/ni)*Kdash;//eV(taken as Ei-Fp)
Eg=1.12;//eV(Band gap)
delE2=Eg-delE1;//eV(taken as Ec-Fp)
disp(delE2,"Steady state separation between Fp & Ec in eV : ");
Ip=q*A*Dp/Lp*delta_p*exp(x*10^-8/Lp);//A
disp(Ip,"Hole current in A : ");
Qp=q*A*delta_p*Lp;//C
disp(Qp,"Excess stored hole charge(Coulomb)");
//Answer in the book is wrong beacause of calculation mistake in the value of p & Ip.
