//clear//
clc
clear
exec("7.9data.sci");
 t = 0:.1:12;
function w=f(t,c)
 
 w =zeros(3,1);

rd = c(1)*.01;
rsm = m/c(1);
kobs= (umax*(1-c(3)/93)^.52);
rg= kobs*c(1)*c(2)/(ks+c(2));
//r2 = -k2*c(3)*c(1)^.5;
 w(1)= rg-rd;
 w(2) = ysc*(-rg)-rsm;
 w(3) = rg*ypc;
 
endfunction

x=ode([1;250;0],t0,t,f);

l1=x(1,: )'
l2=x(2,: )'
l3=x(3,: )'

plot2d(t',[l1 l2 l3]); 

xtitle( 'Figure E7-9.1 concentrations as a function of time', 't (hr)', 'C (g/dm^3)' ) ;
legend(['Cc';'Cs';'Cp']);


