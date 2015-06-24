//Finding the Saturation Current
//Example 2.1 (Page No- 35) 
clc
clear
// Given data
Vd = 1.2 // in V
Id = 300 // in A
n = 2
Vt = 25.7*10^-3 // in V
Is = Id/(exp(Vd/(n*Vt))-1)
//Is = Id/(e^(1.2/(2*25.7*10^-3))-1)
printf('Saturation current is : %e A',Is)




