
clear//

//Variable Declaration
L=4 //Length of each section in ft
h_ab=4 //Thickness of the front section in inches
h_bd=6 //Thickness of the back section in inches
P=2000 //Point load acting at point A in lb
M_B=8000 //Moment at 4ft in lb.ft
M_D=16000 //Moment at x=8ft in lb.ft
b=2 //Breadth in inches

//Calculations
S_ab=b*h_ab**2*6**-1 //Sectional Modulus of section AB in in^3
S_bd=b*h_bd**2*6**-1 //Sectional Modulus of section BD in in^3
sigma_B=12*M_B*S_ab**-1 //Maximum bending stress in psi
sigma_D=12*M_D*S_bd**-1 //Maximum bending stress in psi

//Maximum stress
sigma_max=max(sigma_B,sigma_D) //Maximum stress in psi

//Result
printf("\n Comparing the two results we find that the maximum stress is")
printf("\n Sigma_max= %0.0f psi",sigma_max)
