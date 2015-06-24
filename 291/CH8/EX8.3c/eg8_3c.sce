noise_var = 4;
num = 5;
Xbar = 10;
u = 8;
statistic = sqrt(num/noise_var)*(Xbar - u);
compare = cdfnor("X", 0, 1, 0.975, 0.025);
lim1 = statistic + compare;
lim2 = statistic - compare;
prob = cdfnor("PQ", lim1 , 0,1 ) - cdfnor("PQ", lim2 , 0,1 );
disp(prob)