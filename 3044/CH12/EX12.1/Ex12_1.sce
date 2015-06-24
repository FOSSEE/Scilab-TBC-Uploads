// Variable declaration
A = [0.25,0.27,0.22,0.30,0.27,0.28,0.32,0.24,0.31,0.26,0.21,0.28]
B = [0.18,0.28,0.21,0.23,0.25,0.20,0.27,0.19,0.24,0.22,0.29,0.16]
C = [0.19,0.25,0.27,0.24,0.18,0.26,0.28,0.24,0.25,0.20,0.21,0.19]
D = [0.23,0.30,0.28,0.28,0.24,0.34,0.20,0.18,0.24,0.28,0.22,0.21]
k = 4
n = 12

// Calculation
A_sum = sum(A)
B_sum = sum(B)
C_sum = sum(C)
D_sum = sum(D)

T = A_sum+B_sum+C_sum+D_sum

c = (T^2)/(4*n)
SST = 0

for i  = 1:12
    SST = SST + A(i)^2 + B(i)^2 + C(i)^2 + D(i)^2
end

SST = SST - c

SSTR = (A_sum^2 + B_sum^2 + C_sum^2 + D_sum^2)/n - c
SSE = SST - SSTR

// Result
printf ( "SST: %.4f",SST)
printf ( "SSTR: %.4f",SSTR)
printf ( "SSE: %.4f",SSE)
