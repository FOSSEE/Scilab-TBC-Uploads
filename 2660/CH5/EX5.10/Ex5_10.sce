clc
// machine A
r_e1 = 9600 //cash flow in Rs
p1 = 46000 // intial cost in Rs
s = 0 // salvage value
e = 8 // M.A.R.R
e = e/100
i = 8 // investment rate
i = i/100
n = 6 // life in years
x = i/((1+i)^n-1) 
ERRR1 = (r_e1 - (p1-s)*x)/p1
//machine B
r_e2 = 7200 //cash flow in Rs
p2 = 32000 // intial cost in Rs 
ERRR2 = (r_e2 - (p2-s)*x)/p2
printf("\n ERRR1 = %0.2f percent \n ERRR2 = %0.2f percent" , ERRR1*100 ,ERRR2*100)
disp("Only machine B is accepteble")
