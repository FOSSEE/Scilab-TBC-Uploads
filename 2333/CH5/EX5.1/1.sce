clc 
     
// Given that
l = 2.945e-2 // coherent length of sodium light
lambda = 5890 // wavelength of light used in angstrom
c = 3e8 // speed of light
// Sample Problem 1 on page no. 242
printf("\n # PROBLEM 1 # \n")
n = l/(lambda*1e-10) // number of oscillation corresponding to coherent length
t = l/c // coherent time
printf("\n Number of oscillation corresponding to coherent length is %e \n Coherent time is %esec.",n,t)



