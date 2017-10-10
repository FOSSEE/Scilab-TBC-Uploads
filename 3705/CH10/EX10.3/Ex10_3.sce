
clear//
//

//Variable Declaration
E=29*10**6 //Youngs Modulus in psi
sigma_yp=36*10**3 //Stress in psi
L=25 //Length in ft
A=17.9 //Area in in^2
Iz=640 //Moment of inertia in in^4
Sz=92.2 //Sectional Modulus in in^3
P=150*10**3 //Load in lb
e=4 //Eccentricity in inches

//Calculations

//Part 1
a=1.09836
sigma_max=P*A**-1+(P*e*Sz**-1)*a //Maximum Stress in psi

//Part 2
//After simplification we get the equation to compute N
N=2.19 //Trial and Error yields

//Part 3
v_max=e*((cos(sqrt((P*L**2*12**2)*(4*E*Iz)**-1)))**-1-1)

//Result
printf("\n The maximum compressive stress in the Column is %0.2f psi",sigma_max)
printf("\n The factor of safety is %0.3f ",N)
printf("\n The maximum lateral dfelection is %0.3f in",v_max)
