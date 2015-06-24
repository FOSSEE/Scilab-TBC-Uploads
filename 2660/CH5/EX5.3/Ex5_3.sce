clc
// cash in flows
a = 21240 // annual revenue in Rs
i = 10 // annual interest rate
i = 10/100
n = 5 // perod in years
f1 = 8000 // salvage value in Rs
p1 =  (a*((i+1)^n-1))/(i*(i+1)^5)// annual revenue in Rs
p2 = f1/(i+1)^5 //present worth in Rs
t1 = p1 + p2 // total cash in flows in Rs
// cash out flows
I = 40000 // investment in Rs
f2 = 12000 // annual payment in Rs
p3 = (f2*((1+i)^5-1))/(i*(1+i)^5) // annual payments in Rs
t2 = I + p3 // total cash out flows in Rs
printf("\nTotal cash in flows = Rs %0.2f\nTotal cash out flows = Rs %0.2f",t1 ,t2) 
disp("Since cash out flows are more than cash in flows therefore project is not economical")
// Answers vary due to round off error
