clc
//Given
mu_oil=1.3// refractive index of oil
mu_glass=1.5//refractive index of glass
lambda1=5e-7// wavelength of incident light in cm 
lambda2=7e-7// wavelength of incident light in cm 

//Sample Problem 15 Page No. 52
printf("\n # Problem 15 # \n")
printf(" \n Standard formula used \n   2*mu*t*cos r = (p +0.5)*lambda \n")
p= ((lambda2+lambda1)/ (lambda2-lambda1))/2
t= ((p+0.5)*lambda1)/ (2*mu_oil)*1e10
printf("\n Thickness of oil film  is %d Angstrom.  ",ceil(t))



