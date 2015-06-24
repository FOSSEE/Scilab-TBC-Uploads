// Variable declaration
A = [0.99,1.19,0.79,0.95,0.90]
B = [1.11,1.53,1.37,1.24,1.42]
C = [0.83,0.68,0.94,0.86,0.57]
n = 5
alpha = 0.05

// Calculation
t_thr = 2.179    // t(0.025) at dof = 12
S_sq = 0.0234

BA_lower = mean(B)-mean(A) - t_thr*sqrt(S_sq*(1.0/n + 1.0/n))
BA_upper = mean(B)-mean(A) + t_thr*sqrt(S_sq*(1.0/n + 1.0/n))
BC_lower = mean(B)-mean(C) - t_thr*sqrt(S_sq*(1.0/n + 1.0/n))
BC_upper = mean(B)-mean(C) + t_thr*sqrt(S_sq*(1.0/n + 1.0/n))
AC_lower = mean(A)-mean(C) - t_thr*sqrt(S_sq*(1.0/n + 1.0/n))
AC_upper = mean(A)-mean(C) + t_thr*sqrt(S_sq*(1.0/n + 1.0/n))

// Result
printf ( "MD-ED: ( %.3f , %.3f)",BA_lower,BA_upper)
printf ( "MD-PF: ( %.3f , %.3f)",BC_lower,BC_upper)
printf ( "ED-PF: ( %.3f , %.3f)",AC_lower,AC_upper)
