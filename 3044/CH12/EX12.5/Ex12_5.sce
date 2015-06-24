// Variable declaration
A = [2.8,0.75,3.7]
B = [0.0,-0.1,3.45]
C = [1.15,1.75,4.2]
D = [1.88,2.65,2.7]

n = 12
alpha = 0.05

// Calculation
t_thr = 2.201    // t(0.025) at dof = 11
Mean = (sum(A)+sum(B)+sum(C)+sum(D))/n
std_dev = 1.417
S_sq = 0.0234

lower = Mean - t_thr*std_dev/sqrt(n)
upper = Mean + t_thr*std_dev/sqrt(n)

// Result
printf ( "95%% confidence interval for mean of differences: ( %.2f , %.2f)",lower ,upper)
