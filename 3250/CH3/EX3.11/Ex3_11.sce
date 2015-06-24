clc 
// Given that
d = 50 // Diameter of the billet in mm
L =75 // Length of the billet in mm
D = 10 // Final diameter of billet in mm
Y = 170 // Avg tensile yield stress for aluminium in N/mm^2
mu = 0.15 // Cofficient of the friction
// Sample Problem 11 on page no. 141
printf("\n # PROBLEM 3.11 # \n")
l = L - ((d-D)/2)*cotd(45)
phi = 1+mu
Y_x = Y*(phi/(phi-1))*(((d/D)^(2*(phi-1)))-1)
F = (%pi/4)*(d^2)*Y_x + (%pi/sqrt(3))*(d*l*Y)
Pf = %pi*Y*(d^2)*((phi/(2*mu))*(((d/D)^(2*mu))-1)-log(d/D)) + (%pi/sqrt(3))*Y*d*l
Loss_f = (Pf/F)*100
Y_X = Y*4.31*log(d/D)
F_ = (%pi/4)*(d^2)*Y_X + (%pi/sqrt(3))*(d*l*Y)
Pf_1 = (%pi/sqrt(3))*Y*(d^2)*(log(d/D))
Pf_2 = (%pi/sqrt(3))*(d*l*Y)
Pf_ = Pf_1+Pf_2
Loss_f_ = (Pf_/F_)*100
printf("\n Maximum force required for extruding the cylindrical aluminium billet = %d N, \n Percent of the total power input will be lost in friction at the start of the operation = %f percent. ",F,Loss_f_)
// Answer in the book given as 2436444 N for max force required for extruding the cylindrical aluminium billet

 
