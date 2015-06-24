//clear//
clc
clear
exec("4.10data.sci");
 V = 0:1:500;
function w=f(V,F)
 
 w=zeros(3,1);
 
 Ft=F(1)+F(2)+F(3);
 ra = -k*Ct0*((F(1)/Ft)-(Ct0/kc)*(F(2)/Ft)*(F(3)/Ft));
 w(1)= ra;
 w(2) = -ra-kc*Ct0*(F(2)/Ft)
 w(3) = -ra;
 
endfunction


x=ode([10;0;0],V0,V,f);

l1=x(1,: )'
l2=x(2,: )'
l3=x(3,: )'
plot2d(V',[l1 l2 l3]); 

xtitle( 'Figure E4-10.2', 'V', 'Fa,Fb,Fc' ) ;
legend(['Fa';'Fb';'Fc']);





