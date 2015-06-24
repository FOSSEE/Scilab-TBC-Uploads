clc;
//ex3.2
d=2*10**-3;
sigma=5.8*10**7;
mu=0.0032;
E=20*10**-3;
q=1.6*10**-19;
n=sigma/(q*mu);//sigma=q*n*mu
disp('/m^3',n*1,"n=");
J=sigma*E;//current density
disp('A/m^2',J*1,"J=");
A=%pi*d*d/4;//area of cross-section of wire
disp('m^2',A*1,"A=");
I=J*A;//current flowing in the wire
disp('A',I*1,"I=");
V=mu*E;//electron drift velocity
disp('m/s',V*1,"V=");//answer printed in the book is wrong

