clear all;
clc;
sigma = 20;//ultimate sheat stress in tons/in^2
d = 1/2;//diameter of the hole in inches
t = 3/8;//thickness of the plate in inches
A = 0.25*%pi*d^2;//area of the cross-section of the punch in^2
P = %pi*d*t*sigma;//necessary force in tons
sigma_comp = P/A;//compressive stress on the punch
printf('The compressive stress of the punch = %d tons/in^2',sigma_comp);
//there is an error in the answer given in textbook.
