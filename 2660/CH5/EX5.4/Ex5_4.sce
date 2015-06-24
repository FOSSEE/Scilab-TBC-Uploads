clc
//Machine A
f1 = 2000 // annual benefit from better production quality in Rs
i = 10 // interest rate
i = 10/100
f2 = 12000 // salvage value in Rs
f3 = 8000 // operating and maintenance cost in Rs
I1 = 100000 // initial cost in Rs
n = 5 // years
p1 = (f1*((1+i)^n-1))/(i*(i+1)^n)
p2 = f2/(1+i)^n
c1 = p1 + p2 // cash in flows in Rs
p3 = (f3*((1+i)^n-1))/(i*(i+1)^n)
c2 = I1 + p3 // cash out flows in Rs
Pa = c1 - c2 // net P.W.in Rs
//Machine B
I2 = 60000 // initial cost in Rs
f4 = 16000 // operating and maintenance cost in Rs
f5 = 14000 // reconditioning at the end of third year in Rs
p4 = (16000*((1+i)^5-1))/(i*(1+i)^5)
p5 = f5/(1+i)^5
Pb = -I2 - p4 - p5 // net P.W.in Rs
printf("\n Net P.W.of Machine A= Rs %0.2f\n Net P.W.of Machine B = Rs%0.2f" , Pa ,Pb)
disp("It is clear that Net P.W of Machine A is less nagative as compared to that of Machine B , therefore Machine A is economcal.")
// Answers vary due to round off error
