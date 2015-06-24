//clear//
clc
clear
exec("8.6data.sci");
 V = 0:.1:3.6;
function w=f(V,X)
 
 w =zeros(1,1);
T =330+43.3*X;
k=31.1*exp(7906*(T-360)/(T*360));
Kc = 3.03*exp(-830.3*((T-360)/(T*360)));
Xe = Kc/(1+Kc);
ra = -k*Ca0*(1-(1+(1/Kc))*X);
 w(1)= -ra/Fa0;
 rate = -ra;
endfunction

x=ode([0],V0,V,f);

for i =1:length(x)
  T(1,i) =330+43.3*x(1,i)
  
  k(1,i)=31.1*exp(7906*(T(1,i)-360)/(T(1,i)*360));
  Kc(1,i) = 3.03*exp(-830.3*((T(1,i)-360)/(T(1,i)*360)));
  
  ra(1,i) = k(1,i)*Ca0*(1-(1+(1/Kc(1,i)))*x(1,i));
end
scf(1)
plot2d(V,x(1,:)); 

xtitle( 'Figure E8-6.1a', 'V(m^3)', 'X' ) ;
scf(2)
plot2d(V,T(1,:)); 

xtitle( 'Figure E8-6.1b', 'V(m^3)', 'T (K)' ) ;

scf(3)
plot2d(V,ra); 

xtitle( 'Figure E8-6.1c', 'V(m^3)', '-ra (kmol/m^3hr)' ) ;


