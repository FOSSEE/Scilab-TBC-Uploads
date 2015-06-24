clc
a = 100000 // Ej(p/f,e%,j) in Rs
n = 5 // life in years
e = 20 // M.A.R.R.
e = e/100 // M.A.R.R.
i = e
A = 32000 // savings in Rs
s = 20000 // salvage value in Rs
b = ((A*(((i+1)^n)-1)/i)+s)/a // (F/p,I,5)
i2 = (b)^(1/n)-1 // internal rate of return
printf("\n ERR = %0.4f\n Internal rate of return = %0.2f percent" , b , i2*100)
disp("Since Internal rate of return is > M.A.R.R , therefore project is feasible")
