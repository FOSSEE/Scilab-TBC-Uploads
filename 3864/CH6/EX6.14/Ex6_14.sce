clear
//
//

//Initilization of Variables

q_b=80 //N/mm**2 //Shear stress in Brass
q_s=100 //N/mm**2 //Shear stress in Steel
G_b=40*10**3 //N/mm**2 
G_s=80*10**3 
L_b=1000 //mm //Length of brass shaft
L_s=1200 //mm //Length of steel shaft
d1=80 //mm //Diameter of brass shaft
d2=60 //mm //Diameter of steel shaft

//Calculations

//Polar modulus of brass rod
J_b=%pi*32**-1*d1**4 //mm**4 

//Polar modulus of steel rod
J_s=%pi*32**-1*d2**4 //mm**4

//Considering bras Rod:AB
T1=J_b*q_b*(d1*2**-1)**-1 //N-mm 

//Considering Steel Rod:BC
T2=J_s*q_s*(d2*2**-1)**-1 //N-mm

//Max Torque that can be applied
T2

//Let theta_b and theta_s be the rotations in Brass and steel respectively
theta_b=T2*L_b*(G_b*J_b)**-1 //Radians
theta_s=T2*L_s*(G_s*J_s)**-1 //Radians

theta=theta_b+theta_s //Radians //Rotation of free end

//Result
printf("\n Total of free end is %0.3f  Radians",theta)
