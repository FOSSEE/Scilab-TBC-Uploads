
clear//

//Variable Declaration
sigma_w=1000 //Working Stress in Bending in psi
tau_w=100 //Working stress in shear in psi
//Dimensions
b_out=8 //Width in inches
h=10 //Depth in inches
b_in=6 //Width in inches

//Calculations
I=((b_out*h**3)-(b_in*b_out**3))*12**-1 //Moment of inertia in in^4
//Design for shear
Q=(b_out*h*0.5*0.25*h)-(b_in*b_out*0.5*0.25*b_out) //First Moment about NA in in^3

//Largest P
P=(tau_w*I*2)/(1.5*Q) //P in shear in lb

//Design for bending
P1=(sigma_w*I)/(60*5) //P in bending in lb

//Result
printf("\n The maximum allowable P value is %0.0f lb",min(P,P1))
