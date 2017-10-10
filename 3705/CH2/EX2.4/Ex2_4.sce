
clear//

//Variable Declaration
d=0.05 //Diameter of the rod in mm
P=8000 //Load on the bar in N
E=40*10**6 //Modulus of elasticity in Pa
v=0.45 //Poisson Ratio
L=300 //Length of the rod in mm

//Calculation
A=((%pi*d**2)/4) //Area of the bar in mm^2
sigma_x=-P/A //Axial Stress in the bar in Pa
//As contact pressure resists the force
p=(v*sigma_x)/(1-v)
//Using Axial Strain formula
e_x=(sigma_x-(v*2*p))/E
//Corresponding change in length
delta=e_x*L //contraction in mm
//Without constrains of the wall
delta_w=(-P*(L*10**-3))/(E*A) //Elongation in m

//Result
printf("\n The elongation in the bar is %0.2f mm contraction",delta)
