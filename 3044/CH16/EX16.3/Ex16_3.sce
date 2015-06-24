// Variable declaration
n = 50   // Units
r = 10   // Failed units
v = 20   // Degrees of freedom

// Calculation

l = [65,110,380,420,505,580,650,840,910,950]

T = sum(l)+(50-10)*950
U = T/10

X_sq_thr = 31.410         // chi-square theoritical at alpha = 0.05
X_sq_thr1 = 10.851        // chi-square theoritical at alpha = 0.95

// 90% Confidence interval

llim = (2*T)/X_sq_thr
ulim = (2*T)/X_sq_thr1

// Result
printf ( "90%% confidence interval(in hours): %.f , %.f ",llim,ulim)
