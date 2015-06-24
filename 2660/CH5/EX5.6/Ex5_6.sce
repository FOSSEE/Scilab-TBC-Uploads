clc
//Machine A
i = 8 // // interest rate
i = i/100 // interest rate
n1 = 10 // economic life in years
CRF1 = i*(1+0.08)^n1/((1+i)^n1-1) // capital recovery factor
p1 = 46000 // first cost in Rs
s1 = 8000 // salvage value in Rs
o1 = 10000 // operating charges in Rs
AC1 = (p1-s1)*CRF1 + s1*i + o1 // annual cost in Rs
//Machine B
n2 = 15 // economic life in years
CRF2 = i*(1+0.08)^n2/((1+i)^n2-1) // capital recovery factor
p2 = 60000 // first cost in Rs
s2 = 10000 // salvage value in Rs
o2 = 9200 // operating charges in Rs
AC2 = (p2-s2)*CRF2 + s2*i + o2 // annual cost in Rs
printf("\n Annual cost of machine A = Rs %0.2f\n Annual cost of Machine B = Rs %0.2f" ,AC1, AC2 )
disp("Machine B will be economical")
// Error in textbook
