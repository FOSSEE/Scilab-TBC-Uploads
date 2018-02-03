clear
//
//

//Initilization of Variables

G=80*10**3 //N/mm**2 //Modulus of Rigidity
d1=100 //mm //Outer diameter of hollow shft
d2=80  //mm //Inner diameter of hollow shaft
d=80   //mm //diameter of Solid shaft
d3=60  //mm //diameter of Solid shaft having L=0.5m
L1=300 //mm //Length of Hollow shaft
L2=400 //mm //Length of solid shaft
L3=500 //mm //LEngth of solid shaft of diameter 60mm
T1=2*10**6 //N-mm //Torsion in Shaft AB
T2=1*10**6 //N-mm //Torsion in shaft BC
T3=1*10**6 //N-mm //Torsion in shaft CD

//Calculations

//Now Polar modulus of section AB
J1=%pi*32**-1*(d1**4-d2**4) //mm**4 

//Polar modulus of section BC
J2=%pi*32**-1*d**4 //mm**4

//Polar modulus of section CD
J3=%pi*32**-1*d3**4 //mm**4

//Now angle of twist of AB
theta1=T1*L1*(G*J1)**-1 //radians

//Angle of twist of BC
theta2=T2*L2*(G*J2)**-1 //radians

//Angle of twist of CD
theta3=T3*L3*(G*J3)**-1 //radians

//Angle of twist
theta=theta1-theta2+theta3 //Radians

//Shear stress in AB From Torsion Equation
q_s1=T1*(d1*2**-1)*J1**-1 //N/mm**2 

//Shear stress in BC
q_s2=T2*(d*2**-1)*J2**-1 //N/mm**2 

//Shear stress in CD
q_s3=T3*(d3*2**-1)*J3**-1 //N-mm**2

//As max shear stress occurs in portion CD,so consider CD

//Result
printf("\n Angle of twist at free end is %0.5f  Radian",theta)
printf("\n Max Shear stress %0.2f  N/mm**2",q_s3)
