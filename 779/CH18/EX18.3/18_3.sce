P1 = 1; P3 = 9;
P2 = sqrt(P1*P3);
T1 = 300; cp = 1.005;
R = 0.287; n = 1.3;
W = ((2*n*R*T1)/(n-1))*((P2/P1)^((n-1)/n)-1);
T2 = T1*(P2/P1)^((n-1)/n);
H = cp*(T2-T1);
disp("kJ/kg",H,"Heat rejected to the intercooler is")