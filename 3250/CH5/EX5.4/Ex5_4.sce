clc 
// Given that
t = 1.2 // Thickness of aluminium sheet in mm
t_ = 0.25 // Adhesive thickness in mm
l = 12 // Overlapped length in mm
E = 703 // Modulus of elastisity in N/mm^2
G = 11.9 // Shear modulus of adhesive in N/mm^2
T_S = 0.6 // Ultimate shear stress in N/mm^2
// Sample Problem 4 on page no. 303
printf("\n # PROBLEM 5.4 # \n")
K = (((l^2)*G)/(2*E*t*t_))^(1/2)
T = T_S/K
printf("\n The maximum shear stress the lap joint can withstand = %f N/mm^2",T)
// Answer in the book is given as 0.274 N/mm^2
