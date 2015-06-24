//clear//
clc
clear
//exec("9.8data.sci");
t = 0:.01:.5;

function w=f(t,Y)
 
 w =zeros(2,1);

d(X)/d(z}=-ra/U/Ca0
Ka=0.05;
Kb=.15;
Pao=12;
eps=1;
A=7.6;
R=0.082;
T=400+273;
Kc=.1;
rho=80;
kprime=0.0014;
D=1.5;
Uo=2.5
U:Uo*(l+eps*X)
Pa=PBo*(l-X)/(ltepstX)
Pb=Pao*X/(l+eps*X)
vo=Uo*3.1416*D*D/4
Ca0=PBo/R/T
Kca=Ka*R*T
Pc=Pb
a=l/(l+At(z/U)**O.S)
raprime=at (-kprirne*Pa/(l t Kat Pa+Kb:l:Pb+Kct Pc»
ra:rhotraprime
endfunction

x=ode([1;.8],t0,t,f);
Ca0=.8;
Ct0=1
ya0=Ca0/Ct0;
for i=1:length(t)
  X(i)=1-(1+ya0)/(1+x(2,i)/Ct0)*x(2,i)/Ca0;
  end
plot2d(t,x(1,:)); 

plot2d(t,x(2,:)); 
plot2d(t,X); 





