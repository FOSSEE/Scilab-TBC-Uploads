m = 1.5;
P1 = 5.6; V1 = 0.06;
T2 = 273+240;
a = 0.946; b = 0.662;
k = 0.0001;
// Part (b)
R = a-b;
T1 = (P1*1e03*V1)/(m*R);
W12 = -integrate('m*(b+k*T)','T',T1,T2);
disp("kJ",W12,"The work done in the expansion is")