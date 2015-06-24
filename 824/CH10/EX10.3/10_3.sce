//clear//
clc
clear
exec("10.3data.sci");
w = 0:10:10000;

function W=f(w,x)
 
 W =zeros(1,1);

pt0=.3*Po;
y=(1-alpha*w)^.5;
ph=pt0*(1.5-x)*y;
pt=pt0*(1-x)*y;
pb=2*pt0*x*y;
rt=-k*kt*ph*pt/(1+kb*pb+kt*pt);
rate=-rt;
W(1)=-rt/ftO; 
endfunction
pt0=.3*Po;
X=ode([0],w0,w,f);


for i =1:length(X)
  y(1,i)=(1-alpha*w(1,i))^.5;
ph(1,i)=pt0*(1.5-X(1,i))*y(1,i);
pt(1,i)=pt0*(1-X(1,i))*y(1,i);
pb(1,i)=2*pt0*X(1,i)*y(1,i)
end

m1 = X';
m2=y';
scf(1)
plot2d(w',[m1 m2]); 

xtitle( 'Figure E10-3.1', 'w', 'x,y' ) ;
legend(['x';'y']);

scf(2)
l1=ph'
l2=pt'
l3=pb'
plot2d(w',[l1 l2 l3]); 

xtitle( 'Figure E10-3.2', 'w', 'ph,pt,pb' ) ;
legend(['ph';'pt';'pb']);




