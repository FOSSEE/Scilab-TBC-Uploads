clear;
clc;

r=.3
R=.85;
n=log(1-R)/log(1-r);
N=round(n);
if(N<n)
    N=N+1;
mprintf("\nComponents required = %d",N)
Rs=1-((1-.3)^N);
mprintf("\nNet System Reliability = %.3f",Rs)


