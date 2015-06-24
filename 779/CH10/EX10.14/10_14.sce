P1 = 1;
P2 = 15;
V1 = 800e-06;
V2 = V1/8;
cv = 0.718; g = 1.4;
n = (log(P2/P1))/(log(V1/V2))
T1 = 348; R = 0.287;
m = (P1*100*V1)/(R*T1);
T2 = T1*((P2*V2)/(P1*V1));
P3 = 50;
T3 = T2*(P3/P2);
S21 = m*(cv*log(T2/T1)+R*log(V2/V1));
S32 = m*cv*log(T3/T2);
Q = (m*cv*(g-n)*(T2-T1))/(1-n);
disp(n,"The index of compression process is")
disp("kJ/K",S21,"S2-S1 is")
disp("kJ/K",S32,"S3-S2 is")
disp("kJ",Q,"The heat exchange is")