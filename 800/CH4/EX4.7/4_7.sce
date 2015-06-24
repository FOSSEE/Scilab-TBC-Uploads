//clear//
clc
clear
exec("4.7data.sci");
 W = 0:1:60;
function w=f(W,Y)
 
w=zeros(2,1);
w(1)= (kprime/FA0)*((1-Y(1))/(1+e*Y(1)))*Y(2);
w(2) = -alpha*(1+e*Y(1))/(2*Y(2));
endfunction


x=ode([0;1],W0,W,f);
for i= 1:61
  F(i) = (1+e*x(1,i))/x(2,i);
end
F= F';
for i= 1:61
  rate(i) = (kprime)*((1-x(1,i))/(1+e*x(1,i)))*x(2,i);
end
rate =rate';

scf(1)
plot2d(W,rate);
xtitle( 'Figure E4-7.1 Reaction rate porfile down the PBR', 'w', 'rate' ) ;
scf(2)

l1=x(1,: )'
l2=x(2,: )'
l3=F'
plot2d(W',[l1 l2 l3]); 

xtitle( 'Figure E4-7.2', 'w', 'x,y,z' ) ;
legend(['x';'y';'f']);
