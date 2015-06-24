clc
// Given That
lambda1 = 5.9e-5 // wavelength in cm
lambda2 = 5.896e-5 //wavelength in cm
lambda = 5.89e-5 // wavelength in cm
grating_element = 4000 // lines per cm
t = 4 // width of grating in  cm
n = 1 // for first order spectrum
//Sample Problem 27 Page No. 58
printf("\n # Problem 27 # \n")
printf(" \n Standard formula used \n   lambda / d_lambda = n*N”)\n")

N = t * grating_element
 Resolv_pow = lambda /(lambda2 - lambda)
 N = Resolv_pow / n
 
 if (grating_element > N  )  then 
     printf("Grating will well resolve two spectral lines. \n") 
     end

