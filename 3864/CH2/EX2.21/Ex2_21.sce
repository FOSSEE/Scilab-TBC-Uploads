clear
//
//

//Initilization of Variables

P=20*10**3 //N //Load
d=6 //mm //diameter of wire
E=2*10**5 //N/mm**2 
L_BO=4000 //mm //Length of BO

//Calculations

//Let theta be the angle between OA and OB and also between OC and OB
theta=30

//Let P_OA,P_OB,P_OC be the Forces introduced in wires OA,OB,OC respectively
//Due to symmetry P_OA=P_OC   (same angles)

//Sum of all Vertical Forces=0
//P_OA*cos(theta)+P_OB+P_OC*cos(theta)=P

//After further simplifyinf we get
//2*P_OA*cos(theta)+P_OB=20  ...............(1)

//Let oo1 be the extension of BO
//oo1=L_A1o1*(cos(theta))**-1

//From relation we get
//P_OB*L_BO=P_OA*L_AO*(cos(theta))**-1

//But L_AO=L_BO*(cos(theta))**-1

//After substituting value of L_AO in above equation we get
//P_OB=0.75*P_OA    .......................(2)

//substituting in Equation 1 we get
//2*P_OA*cos(theta)+0.75*P_OA=20

P_OA=20*(2*cos(theta*%pi*180**-1)+0.75)**-1

P_OB=0.75*P_OA

A=%pi*4**-1*d**2   

//Vertical displacement of Load
dell_l_BO=P_OB*10**3*L_BO*(A*E)**-1
                    
//Result
printf("\n Forces in each wire is:P_OA %0.2f  KN",P_OA)
printf("\n                       :P_OB %0.2f  KN",P_OB)
printf("\n Vertical displacement of Loadis %0.2f  mm",dell_l_BO)
