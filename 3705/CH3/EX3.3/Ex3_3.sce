
clear//

//Variable Declaration
d=2 //Diameter in ft
G=12*10**6 //Bulk Modulus in psi
//Torque in lb.ft
T1=500 //Torque 1 
T2=900 //Torque 2
T3=1000 //Torque 3
//Length in ft
L1=4 
L2=3
L3=5

//Calculations
//Applying the sum of torques we get
Tab=T1 //Torque at section AB in lb.ft
Tbc=-T2+T1 //Torque at section BC in lb.ft
Tcd=T3-T2+T1 //Torque at Section CD in lb.ft

//Summing the angle of twists
theta_r=(((Tab*12*L3*12)+(Tbc*12*L2*12)+(Tcd*12*L1*12))*32)/(%pi*2**4*G)
theta=(theta_r*180)/%pi //Angle in degrees

printf("\n The angle of twist is %0.3f degrees",theta)
