//clear//
clc
clear
exec("4.8data.sci");
Z = 0:1:12;
function w=f(Z,Y)
 
 w=zeros(2,1);
 Ac= 3.14*((R^2)-(Z-L)^2);
 Ca = Ca0*(1-Y(1))*Y(2)/(1+Y(1));
 ra =kprime*Ca*rhocat*(1-phi);
 G= m/Ac;
 V =3.14*(Z*(R^2)-(1.3*(Z-L)^3)-(1/3)*L^3)
 bita = (98.87*G+25630*G^2)*0.01;
 W=rhocat*(1-phi)*V
w(1)= -ra*Ac/FA0
w(2) = -bita/P0/(Y(2)*(1+Y(1)));
endfunction


x=ode([0;1],Z0,Z,f);
for i= 1:length(Z)
  V(1,i) =3.14*Z(1,i)*((R^2)-(Z(1,i)-L)^2)
   W1(1,i)=rhocat*(1-phi)*V(1,i)
end

l1=x(1,: )'
l2=x(2,: )'

plot2d(W1',[l1 l2]); 

xtitle( 'Figure E4-8.2', 'w', 'x,y' ) ;
legend(['x';'y']);

