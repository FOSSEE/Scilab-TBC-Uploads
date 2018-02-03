clear
//
//

//Initilization of Variables

d=25 //mm //Diameter of steel bar
p=50*10**3 //N //Pull
dell_1=0.095 //mm //Extension of bar
l=200 //mm //Guage Length
T=200*10**3 //N-mm //Torsional moment
theta=0.9*%pi*180**-1 //angle of twist
L=250 //mm Length of steel bar

//Calculations

A=%pi*4**-1*d**2 //Area of steel bar //mm**2
E=p*l*(dell_1*A)**-1 //N/mm**2 //Modulus of elasticity 

J=%pi*32**-1*d**4 //mm**4 //Polar modulus

G=T*L*(theta*J)**-1 //Modulus of rigidity //N/mm**2

//Now from the relation of Elastic constants
mu=E*(2*G)**-1-1

//result
printf("\n The Poissons ratio is %0.3f  ",mu)
