Px = 16kPa; Poy = 70kPa;
Mx = 1.735; Pyx = 3.34; // Pyx = Py/Px
rho_yx = 2.25;
Tyx = 1.483; Poyox = 0.84; My = 0.631;
Tox = 573; Toy = Tox;
Tx = Tox/(1+((g-1)/2)*Mx^2);
Ty = Tyx*Tx;
Pox = Poy/Poyox ;
// From table
Mx = 1.735;
disp(Mx,"Mach number of the tunnel is")