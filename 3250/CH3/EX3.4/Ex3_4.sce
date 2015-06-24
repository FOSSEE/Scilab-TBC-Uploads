clc 
// Given that
mu = 0.25 // Cofficient of friction between the job and the dies 
Y = 7 // Avg yield stress of the lead in N/mm^2
h = 6 // Height of die in mm
L = 150 // Length of the strip in mm
V1 = 24*24*150 // Volume of the strip in mm^3
V2 = 6*96*150 // Volume of the die in mm^3
w= 96 // Weidth of the die in mm
// Sample Problem 4 on page no. 118
printf("\n # PROBLEM 3.4 # \n")
K = Y/sqrt(3)
x_ = (h/(2*mu))*(log(1/(2*mu)))
l = w/2
funcprot(0)
function p1 = f(x), p1 = (2*K)*exp((2*mu/h)*x),
endfunction
funcprot(0)
I1 = intg(0,x_,f)
function p2 = f(y), p2=(2*K)*((1/2*mu)*(log(1/(2*mu))) + (y/h)),
endfunction
I2 = intg(x_,l,f)
F = 2*(I1+I2)
F_ = F*L
printf("\n The maximum forging force = %e N",F_)
// Answer in the book is given as 0.54*10^6 N 

 
