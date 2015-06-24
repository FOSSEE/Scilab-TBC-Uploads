// Calculation of ultimate tensile strength 
clc
K = 689655  // in kPa
n = 0.5 
A0 = 1 // let
printf("\n Example 2.1")
sigma = K*n^n
A_neck = A0*exp(-n)
P= sigma*A_neck
UTS = P/A0
printf("\n True ultimate tensile strength is %.2fkPa",sigma)
printf("\n Engineering UTS of material is %.2f kPa",UTS)
// Answer in book is 295521.79 kPa

