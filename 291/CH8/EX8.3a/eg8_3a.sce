noise_var = 4;
noise_mean= 0;
num = 5;
Xbar = 9.5;
u = 8;
statistic = sqrt(num/noise_var)*(Xbar - u);
compare = cdfnor("X", 0, 1, 0.975, 0.025);
if(statistic<compare)
    disp("Hypothesis is accepted");
else
    disp("Hypothesis is not accepted")
end        