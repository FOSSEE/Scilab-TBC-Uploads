clear
//
//

//Initilization of Variables
T=8 //KN-m //Torque 
d=100 //mm //Diameter of portion AB
d1=100 //mm //External Diameter of Portion BC
d2=75 //mm //Internal Diameter of Portion BC
G=80 //KN/mm**2 //Modulus of Rigidity
L1=1500 //mm //Radial Distance of Portion AB
L2=2500 //mm //Radial Distance ofPortion BC

//Calculations

R=d*2**-1 //mm //Radius of shaft

//For Portion AB,Polar Modulus
J1=%pi*32**-1*d**4 //mm**4 

//For Portion BC,Polar modulus 
J2=%pi*32**-1*(d1**4-d2**4) //mm**4

//Now Max stress occurs in portion BC since max radial Distance is sme in both cases
q_max=T*J2**-1*R*10**6 //N/mm**2 

//Let theta1 be the rotation in Portion AB and theta2 be the rotation in portion BC
theta1=T*L1*(G*J1)**-1 //Radians
theta2=T*L2*(G*J2)**-1 //Radians

//Total Rotational at end C
theta=(theta1+theta2)*10**3 //Radians

//Result
printf("\n Max stress induced is %0.2f  N/mm**2",q_max)
printf("\n Angle of Twist is %0.3f  radians",theta)
