clear
//
//

//Initilization of Variables

d=100 //mm //Diameter of circular rod
P=1*10**6 //N //Tensile Force
mu=0.3 //Poissons ratio
E=2*10**5 //N/mm**2 //Youngs Modulus 
L=500 //mm //Length of rod

//Calculations

//Modulus of Rigidity
G=E*(2*(1+mu))**-1 //N/mm**2

//Bulk Modulus 
K=E*(3*(1-2*mu))**-1 //N/mm**2

A=%pi*4**-1*d**2 //mm**2 //Area of Circular rod
//Let sigma be the Longitudinal stress
sigma=P*A**-1 //N/mm**2 

s=sigma*E**-1 //Linear strain
e_x=s

//Volumetric strain
e_v=e_x*(1-2*mu)

v=%pi*4**-1*d**2*L
//Change in VOlume
dell_v=e_v*v

//Result
printf("\n Bulk Modulus  is %0.2f  N/mm**2",E)
printf("\n Modulus of Rigidity is %0.2f  N/mm**2",G)
printf("\n The change in Volume is %0.2f  mm**3",dell_v)
