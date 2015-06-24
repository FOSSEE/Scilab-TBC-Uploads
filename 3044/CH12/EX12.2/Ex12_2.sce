// Variable declaration
a = [0.25,0.27,0.22,0.30,0.27,0.28,0.32,0.24,0.31,0.26,0.21,0.28]
b = [0.18,0.28,0.21,0.23,0.25,0.20,0.27,0.19,0.24,0.22,0.29,0.16]
c = [0.19,0.25,0.27,0.24,0.18,0.26,0.28,0.24,0.25,0.20,0.21,0.19]
d = [0.23,0.30,0.28,0.28,0.24,0.34,0.20,0.18,0.24,0.28,0.22,0.21]
K = 4   // number of samples
n = 12  // entries in each sample

// Calculation
Sum = sum(a)+sum(b)+sum(c)+sum(d)
asum = sum(a)
bsum = sum(b)
csum = sum(c)
dsum = sum(d)

U = Sum/48
a1 = (asum/12) - U
a2 = (bsum/12) - U
a3 = (csum/12) - U
a4 = (dsum/12) - U

// Result
printf ( "parameters: sample-1: %.3f , sample-2 : %.3f , sample-3: %.3f , sample-4 : %.3f",a1,a2,a3,a4)
