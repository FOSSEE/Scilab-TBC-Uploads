//To calculate the capacitance and charge on plates
epsilon0 = 8.85*10^-12;
V = 100;     //potential, V
A = 100;     //area, cm^2
A = A*10^-4;      //area, m^2
d = 1;    //plate seperation, cm
d = d*10^-2;    //plate seperation, m
C = epsilon0*A/d;     //capacitance, farad
printf("capacitance of capacitor in F is");
disp(C);
Q = C*V;     //charge on plates
printf("charge on plates in coulomb is");
disp(Q);
