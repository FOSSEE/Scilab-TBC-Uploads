E = 29000; // Modulus of elasticity in ksi
spl = 42 ; // Proportional limit in ksi
L = 25 ; // Total length of coloum in ft
n = 2.5 ; // factor of safety
I1 = 98 ; // Moment of inertia on horizontal axis
I2 = 21.7 ; // Moment of inertia on vertical axis
A = 8.25 ; // Area of the cross section
Pcr2 = (4*%pi^2*E*I2)/((L*12)^2) ; // Criticle load if column buckles in the plane of paper
Pcr1 = (%pi^2*E*I1)/((L*12)^2) ; // Criticle load if column buckles in the plane of paper
Pcr = min(Pcr1,Pcr2) ; // Minimum pressure would govern the design
scr = Pcr/A ; // Criticle stress
Pa = Pcr/n ; // Allowable load in k
disp("k",Pa,"The allowable load is ")
 