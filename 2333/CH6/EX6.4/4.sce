clc 
// Given that
mu1 = 1.55 // refractive index for core
mu2 = 1.50 // refractive index for cladding
d = 50 // core diameter in micro meter
// Sample Problem 4 on page no. 256
printf("\n # PROBLEM 4 # \n")

NA = sqrt(mu1^2 - mu2^2) // numerical aperture 
theta_c = asin(mu2 / mu1) * (180 / %pi) // critical angle in degree
theta_0 = asin(NA) * (180 / %pi) // Acceptance angle in degree
x= d*1e-6*tan(theta_c*%pi/180) // distance travelled between two successive collisions

N = 1/x // No. of reflections per meter
printf("\n Standard formula used \n theta_c = asin(mu2 / mu1) * (180 / pi). \n NA = sqrt(mu1^2 - mu2^2). \n theta_0 = asin(NA) * (180 / pi). \n")
printf("\n Numerical aperture = %f,\n Acceptance angle is %f degree.\n No. of reflections per meter is %d",NA,theta_0,N)
