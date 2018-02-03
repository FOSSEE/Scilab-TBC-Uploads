clear
//
//

//Initilization of Variables

P=440*10**6 //N-m/sec //Power transmitted
n=280 //rpm
theta=%pi*180**-1 //radian //angle of twist
L=1000 //mm //Length of solid shaft
q_s=40 //N/mm**2 //Max torsional shear stress
G=84*10**3 //N/mm**2 //Modulus of rigidity

//Calculations

//P=2*%pi*n*T*(60)**-1  //Equation of Power transmitted
T=P*60*(2*%pi*n)**-1 //N-mm //torsional moment

//From Consideration of shear stress
d1=(T*16*(%pi*40)**-1)**0.333333  

//From Consideration of angle of twist
d2=(T*L*32*180*(%pi*84*10**3*%pi)**-1)**0.25

//result
printf("\n Diameter of solid shaft is %0.2f  mm",d1)
