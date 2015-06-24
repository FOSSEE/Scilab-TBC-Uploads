clc
//Given that
h = 6.6e-34 // plank's constant
lambda_threshold = 2.4e-7 // threshold wavelength in cm
lambda = 2e-7 // wavelength of irradicated light in photo emmission
c = 3e8
//Sample Problem 2 Page No. 135
printf("\n # Problem 2 # \n")
printf("\n Standard formula Used \n E = h * (nu1 – nu2)")
E = h * c * ((lambda_threshold - lambda)/(lambda *lambda_threshold))/1.6e-19 // calculation of nergy of photoelectrons
printf("\n Energy of photoelectrons emitted is %f  eV", E)
