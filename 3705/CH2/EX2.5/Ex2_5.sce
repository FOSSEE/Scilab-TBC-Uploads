
clear//

//Variable Declaration
E=500 //Modulus of elasticity in psi
v=0.48 //Poisson ratio
V=600 //Force in lb
w=5 //Width of the plate in inches
l=9 //Length of the plate in inches
t=1.75 //Thickness of the rubber layer in inches

//Calculations
tau=V*(w*l)**-1 //Shear stress in rubber in psi
G=E/(2*(1+v)) //Bulk modulus in psi
gamma=tau/G //Shear Modulus 
disp=t*gamma //Diplacement in inches

//Result
printf("\n The displacement of the rubber layer is %0.4f in",disp)
