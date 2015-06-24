//Determine noise voltage

f = 6e+6;
R1 = 200;
R2 = 300;
T = 17;

R = R1 + R2;
k = 1.38e-23;
T = T + 273;

Vn = sqrt(4*k*T*f*R);

disp(Vn, 'Noise voltage is (in V)')