// Variable declaration
r = 0.70        // correlation coff;
n = 30          // number of students

// Calculation
// 95% confidence interval
Z = 0.5*log((1+r)/(1-r))
Z = 0.5*log((1+r)/(1-r))       // Z value corresponds to r=0.7

z_thr = 1.96           // at 0.025

u1 = Z - (z_thr) / sqrt(27)
u2 = Z + (z_thr) / sqrt(27)

y1 = (exp(u1) - exp(-u1)) / (exp(u1) + exp(-u1))
y2 = (exp(u2) - exp(-u2)) / (exp(u2) + exp(-u2))

// Result
printf ( "95%% confidence interval for normal population: ( %.2f , %.2f )",y1,y2)
