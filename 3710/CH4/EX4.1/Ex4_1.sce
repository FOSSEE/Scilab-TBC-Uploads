//Example 4.1, Page Number 131
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
clc;

kt=0.025 
E=0.4 //(The difference between Ec & Ed)
Q=(10**8) 

j=E/kt
p=Q*exp(-j) //p is the required probability
p=fpround(p,2)
Q1=1/p
Q1=fpround(Q1,2)
mprintf("The Probability of Escape per second of the trapped electron:%.2f/s\n",p)
mprintf(" The Luminescence Lifetime is:%.2fs",Q1)
