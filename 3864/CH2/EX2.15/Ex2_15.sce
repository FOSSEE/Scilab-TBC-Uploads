clear
//
//

//Initilization of Variables

L=800 //mm //Length of bar
F1=30*10**3 //N //Force acting on the bar
F2=60*10**3 //N //force acting on the bar
L=800 //mm //Length of bar
d=25 //mm //diameter of bar 
L_AC=275 //mm //Length of AC
L_CD=150 //mm //Length of CD
L_DB=375 //mm //Length of DB
E=2*10**5 //Pa //Modulus of elasticity

//Calculations

//Let P be the Reaction on tne Bar from support at A

//Shortening of Portion AC
//dell_l_AC1=P*L_AC*(A*E)**-1

//Shortening of Portion CD
//dell_l_CD1=(30+P)*L_CD*(A*E)**-1

//Extension of Portion DB
//dell_l_DB1=(30-P)*L_DB*(A*E)**-1

//Total Extensions=1*(A*E)**-1*(P*L_AC-(30+P)*L_CD+(30-P)*L_DB)
//As Supports are unyielding,Total Extensions=0

//After substituting values in above equation and Further simplifying we get
P=(30*375-150*30)*800**-1

//Reaction of support A
R_A=P

//Reaction of support B
R_B=30-P

//Cross-sectional Area
A=%pi*4**-1*d**2

//Stress in Portion AC
sigma1=P*10**3*A**-1 //N/mm**2

//Stress in Portion CD
sigma2=(30+P)*10**3*A**-1 //N/mm**2

//Stress in Portion DB
sigma3=(30-P)*10**3*A**-1 //N/mm**2

//Shortening of Portion AC
dell_l_AC2=P*10**3*L_AC*(A*E)**-1 //mm 

//Shortening of Portion CD
dell_l_CD2=(30+P)*10**3*L_CD*(A*E)**-1 //mm 

//Extension of Portion DB
dell_l_DB2=(30-P)*10**3*L_DB*(A*E)**-1 //mm 

//result
printf("\n The Reactios at two Ends are:R_A %0.2f  KN",R_A)
printf("\n                             :R_B %0.2f  KN",R_B)
printf("\n Stress in Portion AC %0.2f  N/mm**2",sigma1)
printf("\n Stress in Portion CD %0.2f  N/mm**2",sigma2)
printf("\n Stress in Portion DB %0.2f  N/mm**2",sigma3)
printf("\n Shortening of Portion AC %0.3f  mm",dell_l_AC2)
printf("\n Shortening of Portion CD %0.3f  mm",dell_l_CD2)
printf("\n Shortening of Portion DB %0.3f  mm",dell_l_DB2)
