clc 
// Given that
mu = 0.08// Cofficient of friction between the job and the dies 
Y = 7 // Avg yield stress of the lead in N/mm^2
h = 6 // Height of die in mm
L = 150 // Length of the strip in mm
V1 = 24*24*150 // Volume of the strip in mm^3
V2 = 6*96*150 // Volume of the die in mm^3
w= 96 // Weidth of the die in mm
// Sample Problem 5 on page no. 119
printf("\n # PROBLEM 3.5 # \n")
K = Y/sqrt(3)
x_ = (h/(2*mu))*(log(1/(2*mu)))
l = w/2
funcprot(0)
function p1 = f(x), p1 = (2*K)*exp((2*mu/h)*x),
endfunction
I = intg(0,l,f)
F = 2*(I)
F_ = F*L
printf("\n The maximum forging force = %e N",F_)

 
