clear;
clc;
funcprot(0);

//given data
T01= 288;//inlet absolute stagnation temperature in K
p01 = 101;//inlet absolute stagnation pressure in kPa
beta1 = 45;//relative flow angle at inlet to the rotor in deg
M1_rel = 0.9;//inlet relative Mach number
Yp = 0.068;//rotor loss coefficient
Yp1 = 0.04;//stator loss coefficient
M = 0.5;//rotor exit relative Mach number
gamma = 1.4;
R = 287.15;
Cp = 1005;//in J/(kg.K);
Q1 = 1.2698;//Q(0.9) from compressible flow tables
Q2 = 0.9561;//Q(0.5) from compressible flow tables
M2_rel = 0.5;//rotor exit relative Mach number is 0.5,

//Calculations
M1 = M1_rel*cos(beta1*%pi/180);
T1 = T01/(1+(gamma-1)*0.5*M1^2);
U = M1*sqrt(gamma*R*T1);
p01_rel = p01*((T1/T01)^(gamma/(gamma-1)))*((1+(gamma-1)*0.5*M1_rel^2)^(gamma/(gamma-1)));
p1 = p01*((T1/T01)^(gamma/(gamma-1)));

p02_rel_p01_rel = 1-Yp*(1-((1+(gamma-1)*0.5*M1_rel^2)^(gamma/(gamma-1)))^-1);
beta2 = (180/%pi)*acos((Q1/Q2)*cos(beta1*%pi/180)/p02_rel_p01_rel);
p2_p02_rel = 0.8430;//from tables
p2_p1 = p2_p02_rel*p02_rel_p01_rel*((1+(gamma-1)*0.5*M1_rel^2)^(gamma/(gamma-1)));
p2 = p1*p2_p1;
T2_T2_rel = 0.9524;//from tables
T2 = T1*(T2_T2_rel)*(1+(gamma-1)*0.5*M1_rel^2);
W2 = M2_rel*sqrt(gamma*R*T2);
M2 = sqrt((W2*cos(beta2*%pi/180))^2 +(U-W2*sin(beta2*%pi/180))^2)/sqrt(gamma*R*T2);
T02 = T2*(1+(gamma-1)*0.5*M2^2);
p02 = p2*(1+(gamma-1)*0.5*M2^2)^(gamma/(gamma-1));
delS_rot = R*Yp*(1-(p1/p01_rel));
delS_sta = R*Yp1*(1-(p2/p02));
eff_tt = 1 - (T02*(delS_rot+delS_sta)/(Cp*(T02-T01)));

//Results
printf('(i) The rotor blade speed = %.1f m/s',U);
printf('\n  The blade relative stagnation pressure = %d kPa',p01_rel);
printf('\n (ii)  The rotor exit relative flow angle = %d deg.',ceil(beta2));
printf('\n   The static pressure ratio across the rotor = %.3f',p2_p1);
printf('\n (iii) The absolute stagnation temperature at entry to the stator = %.1f K',T02);
printf('\n  The absolute stagnation pressure at entry to the stator = %d kPa',ceil(p02));
printf('\n  The total-to-total isentropic efficiency of the compressor stage = %.3f',eff_tt);
