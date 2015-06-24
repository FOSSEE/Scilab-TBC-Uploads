noise_var = 4;
noise_mean= 0;
num = 5;
Xbar = 8.5;
u = 8;
statistic = sqrt(num/noise_var)*(Xbar - u);

prob = 2*cdfnor("PQ", -1*statistic , 0,1 );
disp(prob, "P-value is")