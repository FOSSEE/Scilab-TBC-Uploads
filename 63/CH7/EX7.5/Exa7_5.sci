//Determine reactance of the stub and the characteristic impedance of the quater-wave transformer, both connected directly to the load

Z0 = 300;
Zl = 200 + 75*%i;
Bstub = 1.64e-3;

Yl = 1/Zl;
X = -1/Bstub;
Gl = 4.38e-3;
Rl = 1/Gl;

Z01= sqrt(Z0*Rl);

disp(X, 'Reactance of quarter-wave transformer is (in ohms)')
disp(Z01, 'Char. imp. of quarter-wave transformer (in ohms)')
