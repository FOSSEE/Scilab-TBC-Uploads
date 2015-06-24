//To calculate the difference in magnetic potential energy
epsilon_r = 2.56;
tan_delta = 0.7*10^-4;
f = 1;     //frequency, MHz
A = 8;     //area, cm^2
A = A*10^-4;      //area, m^2
d = 0.08;     //diameter, mm
d = d*10^-3;     //diameter, m
epsilon_rdash = epsilon_r*tan_delta;
epsilon0 = 8.85*10^-12;
omega = 2*%pi*10^6;
Rp = d/(omega*epsilon0*epsilon_rdash*A);      //parallel loss resistance, ohm
Rp = Rp*10^-6;      //parallel loss resistance, Mega ohm
Cp = A*epsilon0*epsilon_r/d;     //capacitance, farad
printf("parallel loss resistance is %5.3f ohm",Rp);
printf("capacitance in Farad is");
disp(Cp);
