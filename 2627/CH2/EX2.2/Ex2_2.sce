//Ex 2.2
clc;clear;close;
format('v',6);
fi=0.015;//Wb(flux)
ag=2.5;//mm(airgap)
Ae=200;//cm^2(Effective area)
FD=fi/(Ae*10^-4);//T(Flux density)
mu0=4*%pi*10^-7;//constant
H=FD/mu0;//A/m(Magnetic field strength)
mmf=H*ag*10^-3;//A(magnetomotive force required)
disp(mmf,"Magnetomotive force required(A)");
//Answer in the book is not accurate.
