clear
//
//

//Initilization of Variables

L=6000 //mm //Length of circular shaft
d1=100 //mm //Outer Diameter
d2=75 //mm //Inner Diameter
R=100*2**-1 //Radius of shaft
T=10*10**6 //N-mm //Torsional moment
G=80*10**3 //N/mm**2 //Modulus of Rigidity

//Calculations

J=%pi*32**-1*(d1**4-d2**4) //mm**4 //Polar Modulus 

//Max Shear stress produced
q_s=T*R*J**-1 //N/mm**2

//Angle of twist
theta=T*L*(G*J)**-1 //Radian

//Result
printf("\n MAx shear stress produced is %0.2f  N/mm**2",q_s)
printf("\n Angle of Twist is %0.2f  Radian",theta)
