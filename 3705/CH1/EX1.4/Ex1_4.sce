
clear//

//Variable Declaration
d=3*4**-1 //Rivet diameter in inches
t=7*8**-1 //Thickness of the plate in inches
tau=14000 //Shear stress limit in psi
sigma_b=18000 //Normal stress limit in psi

//Calculations
//Design Shear Stress in Rivets
V=tau*(d**2*(%pi/4))*4 //Shear force maximum allowable in lb
//Design for bearing stress in plate
Pb=sigma_b*t*d*4 //lb

//Result
printf("\n The maximum load that the joint can carry is %0.0f lb",V)
