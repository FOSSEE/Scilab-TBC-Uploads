//chapter12
//example12.24
//page259

alpha=0.99
I_E=1 // mA
t1=27 // degrees
t2=57 // degrees
I_CBO1=0.02d-3 // mA

I_CBO2=I_CBO1*2^((t2-t1)/6) // since it doubles every 6 degrees. So for t2-t1, it becomes 2^((t2-t1)/6) times.

I_C=alpha*I_E+I_CBO2
I_B=I_E-I_C

printf("base current = %.1f micro ampere",I_B*1000)
