clc 
// Given that
J_ = 2 // The threshold value of dose in kJ/cm^3
J = 15 // The dose of top surface in kJ/cm^3
x_ = 300 // Depth below the surface in micro meter
// Sample Problem 4 on page no. 4
printf("\n # PROBLEM 7.4 # \n")
function y=f(x),y = 3/((J*(exp(-0.1*sqrt(x))))^(1.6)-3),
endfunction
t = intg(0,x_,f)
printf("\n The time required to develop the PMMA resist = %d min",t)

