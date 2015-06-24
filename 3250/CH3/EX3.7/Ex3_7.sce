clc 
// Given that
Di = 12.7 // Intial diameter in mm
Df = 10.2 // Final diameter in mm
v = 90 // Drawn speed in m/min
alpha=6 // Half angle of dia in degree
mu = 0.1// Cofficient of friction between the job and the dies 
Y = 207 // Tensile  yield stress of the steel specimen in N/mm^2
Y_ = 414 // Tensile yield stress of the similar specimen at strain 0.5 in N/mm^2
e = 0.5 // Strain
// Sample Problem 7 on page no. 126
printf("\n # PROBLEM 3.7 # \n")
e_ =2* log(Di/Df)
Y_e = Y + (Y_ - Y)*e_/e
Y__ = (Y+Y_e)/2
phi = 1 + (mu/tand(alpha))
Y_f = Y__ * ((phi/(phi-1)) *(1-((Df/Di)^(2*(phi-1)))))
p = Y_f * (%pi/4)*(Df^2)*v/60
Dmax = 1- (1/(phi^(1/(phi-1))))
printf("\n Drawing power = %f kW, \n The maximum passible reduction with same die = %f mm",p/1000,Dmax)


 
