clc 
// Given that
A = 150*6 // Cross-section of strips in mm^2
ti = 6 // Thickness in mm
pA = 0.20 // Reduction in area
d = 400 // Diameter of steel rolls in mm
Ys = 0.35// Shear Yield stress of the material before rolling in KN/mm^2
Ys_ = 0.4// Shear Yield stress of the material after rolling in KN/mm^2
mu = 0.1 // Cofficient of friction
// Sample Problem 1 on page no. 112
printf("\n # PROBLEM 3.1 # \n")
tf =0.8*ti
Ys_a = (Ys + Ys_)/2
r=d/2
thetaI = sqrt((ti-tf)/r)
lambdaI=2*sqrt(r/tf)*atan(thetaI *sqrt(r/tf))
lambdaN = (1/2)*((1/mu)*(log(tf/ti)) + lambdaI)
thetaN  =(sqrt(tf/r))*(tan((lambdaN/2)*(sqrt(tf/r))))
printf("\n The final srip thickness is %f mm, \n The avg shear yield stress during the process is %f KN/mm^2, \n The angle subtended by the deformation zone at the roll centre is %f rad, \n The location of neutral point is %f rad.",tf,Ys_a,thetaI,thetaN)
