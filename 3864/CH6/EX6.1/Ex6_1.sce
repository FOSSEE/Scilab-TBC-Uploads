clear
//
//

//Initilization of Variables

L=10000 //mm //Length of solid shaft
d=100 //mm //Diameter of shaft
n=150     //rpm
P=112.5*10**6 //N-mm/sec //Power Transmitted
G=82*10**3 //N/mm**2 //modulus of Rigidity

//Calculations

J=%pi*d**4*(32)**-1  //mm**3 //Polar Modulus
T=P*60*(2*%pi*n)**-1 //N-mm //Torsional moment

r=50 //mm //Radius

q_s=T*r*J**-1 //N/mm**2 //Max shear stress intensity
Theta=T*L*(G*J)**-1 //angle of twist

//Result
printf("\n Max shear stress intensity %0.2f  N/mm**2",q_s)
printf("\n Angle of Twist %0.3f  radian",Theta)
