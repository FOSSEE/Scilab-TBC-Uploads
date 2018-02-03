clear
//
//

//Initilization of Variables

d1=200 //mm //External Diameter of shaft
t=25 //mm //Thickness of shaft
n=200 //rpm
theta=0.5*%pi*180**-1 //Radian //angle of twist
L=2000 //mm //Length of shaft
G=84*10**3 //N/mm**2
d2=d1-2*t //mm //Internal Diameter of shaft

//Calculations

J=%pi*32**-1*(d1**4-d2**4) //mm**4 //Polar Modulus 

//Torsional moment
T=G*J*theta*L**-1 //N/mm**2 

//Power Transmitted
P=2*%pi*n*T*60**-1*10**-6 //N-mm

//Max shear stress transmitted
q_s=G*theta*(d1*2**-1)*L**-1 //N/mm**2 

//Result
printf("\n Power Transmitted is %0.2f  N-mm",P)
printf("\n Max Shear stress produced is %0.2f  N/mm**2",q_s)
