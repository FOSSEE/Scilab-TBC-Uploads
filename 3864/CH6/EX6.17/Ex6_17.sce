clear
//
//

//Initilization of Variables

d1=80 //mm //External Diameter of Brass tube
d2=50 //mm //Internal Diameter of Brass tube
d=50  //mm //Diameter of steel Tube
G_b=40*10**3 //N/mm**2 //Modulus of Rigidity of brass tube
G_s=80*10**3 //N/mm**2 //Modulus of rigidity of steel tube
T=6*10**6 //N-mm //Torque
L=2000 //mm //Length of Tube

//Calculations

//Polar Modulus of brass tube
J1=%pi*32**-1*(d1**4-d2**4) //mm**4 

//Polar modulus of steel Tube
J2=%pi*32**-1*d**4 //mm**4

//Let T_s & T_b be the torque resisted by steel and brass respectively
//Then, T_b+T_s=T   ............................................(1)

//Since the angle of twist will be the same
//Theta1=Theta2
//After substituting values and further simplifying we get 
//Ts=0.360*Tb     ...........................................(2)

//After substituting value of Ts in eqn 1 and further simplifying we get 
T_b=T*(0.36+1)**-1 //N-mm
T_s=0.360*T_b

//Let q_s and q_b be the max stress in steel and brass respectively
q_b=T_b*(d1*2**-1)*J1**-1 //N/mm**2
q_s=T_s*(d2*2**-1)*J2**-1 //N/mm**2

//Since angle of twist in brass=angle of twist in steel
theta_s=T_s*L*(J2*G_s)**-1

//Result
printf("\n Stresses Developed in Materials are:Brass %0.2f  N/mm**2",q_b)
printf("\n                                    :Steel %0.2f  N/mm**2",q_s)
printf("\n Angle of Twist in 2m Length %0.3f  Radians",theta_s)
