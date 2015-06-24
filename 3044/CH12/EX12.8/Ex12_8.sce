// Variable declaration
A = [0.25,0.27,0.22,0.30,0.27,0.28,0.32,0.24,0.31,0.26,0.21,0.28]
B = [0.18,0.28,0.21,0.23,0.25,0.20,0.27,0.19,0.24,0.22,0.29,0.16]
C = [0.19,0.25,0.27,0.24,0.18,0.26,0.28,0.24,0.25,0.20,0.21,0.19]
D = [0.23,0.30,0.28,0.28,0.24,0.34,0.20,0.18,0.24,0.28,0.22,0.21]
n = 12

// Calculation

Mean = [sum(A)/length(A),sum(B)/length(B),sum(C)/length(C),sum(D)/length(D)]

Error_mean_square = 0.0015
s = sqrt(Error_mean_square/n)
rp = [2.85,3.00,3.09]
Rp = s*rp
// Result
printf ( "RP: ")
disp(Rp)
