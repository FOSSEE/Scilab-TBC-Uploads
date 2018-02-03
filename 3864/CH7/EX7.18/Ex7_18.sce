clear
//
//

//Initilization of Variables

d=100 //mm //Diameter of shaft
M=3*10**6 //N-mm //B.M
T=6*10**6 //N-mm //Twisting Moment
mu=0.3

//Calculations

//Max principal Stress

P1=16*(%pi*d**3)**-1*(M+(M**2+T**2)**0.5) //N/mm**2 
P2=16*(%pi*d**3)**-1*(M-(M**2+T**2)**0.5) //N/mm**2 

//Direct stress
P=(P1)-mu*(P2) //N/mm**2 


//Result
printf("\n Principal stresses are: %0.2f  N/mm**2",P1)
printf("\n                       : %0.2f  N/mm**2",P2)
printf("\n Stress Producing the same strain is %0.2f  N/mm**2",P)
