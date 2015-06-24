//clear//
clc
clear
//this code is only for the first part of the problem (Adiabatic PFR)
exec("8.7data.sci");
 V = 0:.1:5;
function w=f(V,Y)
 
 w =zeros(2,1);

k=(8.2e14)*exp(-34222/Y(1));

Cpa = 26.63+.183*Y(1)-(45.86e-6)*(Y(1)^2);
delCp = 6.8-(11.5e-3)*Y(1)-(3.81e-6)*(Y(1)^2);
deltaH = 80770+6.8*(Y(1)-Tr)-(5.75e-3)*((Y(1)^2)-Tr^2)-(1.27e-6)*((Y(1)^3)-Tr^3);
ra = -k*Ca0*(((1-Y(2))/(1+Y(2)))*(T0/Y(1)));
w(1) = -ra*(-deltaH)/(Fa0*(Cpa+Y(2)*delCp));
w(2)= -ra/Fa0;
 
endfunction

x=ode([1035;0],V0,V,f);
scf(1)
plot2d(V,x(1,:)); 

xtitle( 'Figure E8-7.1', 'V (m^3)', 'T (K)' ) ;

scf(2)
plot2d(V,x(2,:)); 

xtitle( 'Figure E8-7.1', 'V (m^3)', 'X' ) ;

