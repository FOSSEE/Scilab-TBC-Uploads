clc
Co = 250000 // original value of machine tool in Rs
Cs = 25000 // salvage value in Rs
n = 20 //useful life in years
d = (Co-Cs)/n // depreciation per year in Rs
v1 = Co - 10*d // value of machine tool at the end of 10 years in Rs
s = Co - Cs // sum at the end of useful life in Rs
i = 8/100 // annual interst rate 
D = (s*i)/((1 + i)^n-1) // annual deposit
a  = D*((1+i)^10-1)/i //amount at the end of 10 years in Rs
v2 = Co - a // value at the end of 10 years
printf("\n Value of machine at the end of 10 years through straight line depreciation method = Rs %d" , v1)
printf("\n Value of machine at the end of 10 years through sinking fund method = Rs %d" , v2)
// Answers vary due to round off error
