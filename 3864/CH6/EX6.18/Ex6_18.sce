clear
//
//

//Initilization of Variables

d1=60 //mm //External Diameter of aluminium Tube
d2=40 //mm //Internal Diameter of aluminium Tube
d=40  //mm //Diameter of steel tube
q_a=60 //N/mm**2 //Permissible stress in aluminium
q_s=100 //N/mm**2 //Permissible stress in steel tube
G_a=27*10**3 //N/mm**2 
G_s=80*10**3 //N/mm**2 

//Calculations

//Polar modulus of aluminium Tube
J_a=%pi*32**-1*(d1**4-d2**4) //mm**4

//Polar Modulus of steel Tube
J_s=%pi*32**-1*d**4 //mm**4

//Now the angle of twist of steel tube = angle of twist of aluminium tube
//T_s*L_s*(J_s*theta_s)**-1=T_a*L_a*(J_a*theta_a)**-1
//After substituting values in above Equation and Further simplifyin we get
//T_s=0.7293*T_a   .....................(1)

//If steel Governs the resisting capacity
T_s1=q_s*J_s*(d*2**-1)**-1 //N-mm
T_a1=T_s1*0.7293**-1  //N-mm
T1=(T_s1+T_a1)*10**-6 //KN-m //Total Torque in steel Tube

//If aluminium Governs the resisting capacity 
T_a2=q_a*J_a*(d1*2**-1) //N-mm
T_s2=T_a2*0.7293 //N-mm
T2=(T_s2+T_a2)*10**-6 //KN-m //Total Torque in aluminium tube

//Result
printf("\n Steel Governs the torque carrying capacity %0.2f  KN-m",T1)
