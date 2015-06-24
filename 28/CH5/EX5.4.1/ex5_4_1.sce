syms Wn zeta Kv Ess
s=%s;
p=poly([8 2 1],'s','coeff'); // characteristic equation
z=coeff(p);
Wn=sqrt(z(1,1))
zeta=z(1,2)/(2*Wn)
Kv=z(1,1)/z(1,2)
Ess=1/Kv  // Steady state error for unit ramp i/p
disp(Ess,"Steady state Error=")
