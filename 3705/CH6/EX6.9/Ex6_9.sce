
clear//

//Variable Declaration
P=300 //Force in N
L1=1 //Length in m
L2=2 //Length in m
R_a=100 //Reaction at A in N
R_c=200 //Reaction at C in N
EI=20.48*10**3 //Flexural Rigidity in N.m^2

//Calculations
//Part 1
tC_A=(0.5*(L1+L2)*P*L1-(0.5*L1*P*(L1+L2)**-1))*EI**-1 //First Moment in m
theta_A=tC_A/(L1+L2) //Angle in radians 

//Part 2
tD_A=0.5*L1*R_a*(L1+L2)**-1*EI**-1 //First Moment in m
delta_D=(theta_A*L1-tD_A) //Displacement in m 

//Result
printf("\n The angle in part 1 is %0.3f Degrees",theta_A*180*%pi**-1)
printf("\n The displacement in part 2 is %0.2f mm downward",delta_D*1000)
