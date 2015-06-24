clear;
clc;
disp('Example 11.9');

// aim : To determine
// (a) the actual and hypothetical mean effective pressures referred to the low-pressure cylinder
// (b) the overall diagram factor
// (c) the pecentage of the total indicated power developed in each cylinder

// given values
P = 1400;// steam supply pressure, [kN/m^2]
Pb = 20;// back pressure, [kN/m^2]
Chp = .6;// cut-off in HP cylinder, [stroke]
dh = 300*10^-3;// HP diameter, [m]
di = 500*10^-3;// IP diameter, [m]
dl = 900*10^-3;// LP diameter, [m]

Pm1 = 590;// actual pressure of HP cylinder, [kN/m^2]
Pm2 = 214;// actual pressure of IP cylinder, [kN/m^2]
Pm3 = 88;// actual pressure of LP cylinder, [kN/m^2]

// solution
// (a)
// for HP cylinder
PmH = Pm1*(dh/dl)^2;// PmH referred to LP cylinder, [kN/m^2]
// for IP cylinder
PmI = Pm2*(di/dl)^2;// PmI referred to LP cylinder, [kN/m^2]
PmA = PmH+PmI+Pm3;// actual mean effective pressure referred to LP cylinder, [kN/m^2]

R = dl^2/(dh^2*Chp);// expansion ratio
Pm = P/R*(1+log(R))-Pb;// hypothetical mean effective pressure referred to LP cylinder, [kN/m^2]

mprintf('\n (a) The actual mean effective pressure referred to LP cylinder is  =  %f  kN/m^2\n',PmA);
mprintf('\n      The hypothetical mean effective pressure referred to LP cylinder is  =  %f  kN/m^2\n',Pm);

// (b)
ko = PmA/Pm;// overall diagram factor
mprintf('\n (b) The overall diagram factor is  =  %f\n',ko);

// (c)
HP = PmH/PmA*100;// %age of indicated power developed in HP
IP = PmI/PmA*100; // %age of indicated power developed in IP
LP = Pm3/PmA*100; // %age of indicated power developed in LP
mprintf('\n (c) The pecentage of the total indicated power developed in HP cylinder is  =  %f percent\n',HP);
mprintf('\n     The pecentage of the total indicated power developed in IP cylinder is  =  %f percent\n',IP);
mprintf('\n     The pecentage of the total indicated power developed in LP cylinder is  =  %f  percent\n',LP);

//   End
