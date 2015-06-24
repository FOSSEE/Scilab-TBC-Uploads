clc 
// Given that
Ri = 30 // Inside radius of cup in mm
t = 3 // Thickness in mm
Rb = 40 // Radius of the blank in mm
K = 210 // Shear yield stress of the material in N/mm^2
Y = 600 // Maximum allowable stress in N/mm^2
Beta = 0.05
mu = 0.1// Cofficient of friction between the job and the dies 
// Sample Problem 8 on page no. 130
printf("\n # PROBLEM 3.8 # \n")
Fh = Beta*%pi*(Rb^2)*K
Y_r = (mu*Fh/(%pi*Rb*t))+(2*K*log(Rb/Ri))
Y_z = Y_r*exp(mu*%pi/2)
F = 2*%pi*Ri*t*Y_z
Y_r_ = Y/exp(mu*%pi/2)
Rp = (Rb/exp((Y_r_/(2*K)) - ((mu*Fh)/(2*%pi*K*Rb*t))))-t
printf("\n Drawing force = %d N, \n Minimum passible radius of the cup which can drawn from the given blank without causing a fracture = %f mm",F,Rp)
// Answer in the book given as 62680 N

