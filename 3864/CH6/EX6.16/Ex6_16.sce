clear
//
//

//Initilization of Variables

L=1000 //mm //Length of bar
L1=600 //mm //Length of Bar AB
L2=400 //mm //Length of Bar BC
d1=60  //mm //Outer Diameter of bar BC
d2=30  //mm //Inner Diameter of bar BC
d=60   //mm //Diameter of bar AB
T=2*10**6 //N-mm //Total Torque

//Calculations

//Polar Modulus of Portion AB
J1=%pi*32**-1*d**4 //mm*4

//Polar Modulus of Portion BC
J2=%pi*32**-1*(d1**4-d2**4) //mm**4

//Let T1 be the torque resisted by bar AB and T2 be torque resisted by Bar BC
//Let theta1 and theta2 be the rotation of shaft in portion AB & BC

//theta1=T1*L1*(G*J1)**-1 //radians
//After substituting values and further simplifying we get 
//theta1=32*600*T1*(%pi*60**4*G)**-1

//theta2=T2*L*(J2*G)**-1 //Radians
//After substituting values and further simplifying we get 
//theta2=32*400*T2*(%pi*60**4*(1-0.5**4)*G)**-1 

//Now For consistency of Deformation,theta1=theta2
//After substituting values and further simplifying we get 
//T1=0.7111*T2  ..................................................(1)

//But T1+T2=T=2*10**6   ...........................................(2)
//Substituting value of T1 in above equation

T2=T*(0.7111+1)**-1
T1=0.71111*T2

//Max stress in Portion AB
q_s1=T1*(d*2**-1)*(J1)**-1 //N/mm**2

//Max stress in Portion BC
q_s2=T2*(d1*2**-1)*J2**-1 //N/mm**2 

//Result
printf("\n Stresses Developed in Portion:AB %0.2f  N/mm**2",q_s1)
printf("\n                              :BC %0.2f  N/mm**2",q_s2)
