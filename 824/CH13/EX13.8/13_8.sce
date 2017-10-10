//clear//
clc
clear
k=0.1
cao=8;
z0=0;
z = 0:1:200;

function w=f(z,x)
 
 w =zeros(1,1);

lam=200-z;
ca=cao*(1-x)
E1=4.44658e-10*(lam^4)-1.1802e-7*(lam^3)+1.35358e-5*(lam^2)-.00086
5652*lam+.028004;
E2=-2.64e-9*(lam^3)+1.3618e-6*(lam^2)-.00024069*lam+.015011
F1=4.44658e-10/5*(lam^5)-1.1802e-7/4*lam^4+1.35358e-5/3*lam^3-.000865652/2*lam^2+.028004*lam;
F2=-(-9.3076e-8*lam^3+5.02846e-5*lam^2-.00941*lam+.61823-1)
ra=-k*ca^2;
if lam&lt; =70
  E=E1
else
  E=(E2)
  end
  if(lam&lt; =70)
    F=F1
  else
    F=F2
    end
    EF=E/(1-F)
    w(1)=-(ra/cao+E/(1-F)*x)
endfunction

X=ode([0],z0,z,f);

plot2d(z,X);