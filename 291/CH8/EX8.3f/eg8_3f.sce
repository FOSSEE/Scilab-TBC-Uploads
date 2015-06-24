n =20;
Xbar = 1.54;
uo = 1.6;
sd = 0.8;
statistic = sqrt(n)*(Xbar - uo)/sd;
disp(statistic, "Test statistic is")
p =  cdfnor("PQ", statistic, 0, 1);
disp(p, "P-value is")