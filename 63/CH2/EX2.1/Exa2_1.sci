//Determine RMS noise voltage

f1 = 18e+6;
f2 = 20e+6;
R = 10e+3;
T = 27;
k = 1.38e-23;

df = f2-f1;
T = T + 273;

Vn = sqrt(4*k*T*df*R);

disp(Vn, 'RMS noise voltage is (in V)')
