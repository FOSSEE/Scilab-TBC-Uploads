//Ex 2.3
clc;clear;close;
format('e',9);
A=500;//mm^2(Cross sectional area)
c=400;//mm(circumference)
N=200;//turns
fi=800;//micro Wb(flux)
B=fi*10^-6/(A*10^-6);//T(Flux density)
mu0=4*%pi*10^-7;//constant
mur=380;//relative permeability
S=(c/1000)/(mur*mu0*A*10^-6);//A/Wb(Reluctance)
disp(S,"(a) Reluctance of the ring(A/Wb)");
mmf=fi*10^-6*S;//A
Im=mmf/N;//A(Magnetizing current)
format('v',5);
disp(Im,"(b) Required magnetizing current(A)");
