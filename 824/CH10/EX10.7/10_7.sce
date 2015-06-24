//clear//
clc
clear
exec("10.7data.sci");
z = 0:.1:10;
z0=0;
function w=f(z,X)
 
 w =zeros(1,1);


U=Uo*(1+eps*X)
Pa=Pao*(1-X)/(1+eps*X)
Pb=Pao*X/(1+eps*X)
vo=Uo*3.1416*D*D/4
Ca0=Pao/R/T
Kca=Ka*R*T
Pc=Pb
a=1/(1+A*(z/U)**0.5)
raprime=a*(-kprime*Pa/(1+ Ka*Pa+Kb*Pb+Kc*Pc))
ra=rho*raprime;
w(1)=-ra/U/Ca0
endfunction

x=ode([0],z0,z,f);
for i=1:length(z)
U(1,i)=Uo*(1+eps*x(1,i))
a(1,i)=1/(1+A*(z(1,i)/U(1,i))**0.5)
end


l1=x(1,: )'
l2=a(1,: )'

plot2d(z',[l1 l2]); 

xtitle( 'Figure E10-7.1', 'z', 'X,a' ) ;
legend(['X';'a']);




