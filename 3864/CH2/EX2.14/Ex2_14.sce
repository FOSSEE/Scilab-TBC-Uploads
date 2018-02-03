clear
//
//

//Initilization of Variables

//Portion AB
L_AB=600 //mm //Length of AB
A_AB=40*40 //mm**2 //Cross-section Area of AB

//Portion BC
L_BC=800 //mm //Length of BC
A_BC=30*30 //mm //Length of BC

//Portion CD
L_CD=1000 //mm //Length of CD
A_CD=20*20 //mm //Area of CD

P1=80*10**3 //N //Load1
P2=60*10**3 //N //Load2
P3=40*10**3 //N //Load3

E=2*10**5 //Modulus of Elasticity

//Calculations

P4=P1-P2+P3 //Load4

//Now Force in AB
F_AB=P1

//Force in BC
F_BC=P1-P2

//Force in CD
F_CD=P4

//Extension of AB
dell_l_AB=F_AB*L_AB*(A_AB*E)**-1

//Extension of BC
dell_l_BC=F_BC*L_BC*(A_BC*E)**-1

//Extension of CD
dell_l_CD=F_CD*L_CD*(A_CD*E)**-1

//Total Extension
dell_l=dell_l_AB+dell_l_BC+dell_l_CD

//Result
printf("\n The Total Extension in Bar is %0.2f  mm",dell_l)
