clear
//
//

//Initilization of Variables

L=500 //mm //Length of assembly
D=16 //mm //Diameter of steel bolt
Di=20 //mm //internal Diameter of copper tube
Do=30 //mm //External Diameter of copper tube
E_s=2*10**5 //N/mm**2 //Modulus of Elasticity of steel
E_c=1.2*10**5 //N/mm**2 //Modulus of Elasticity of copper
p=2 //mm //Pitch of nut

//Calculations

//Let P_s be the Force in bolt and P_c be the FOrce in copper tube
//P_s=-P_s

dell=1*4**-1*2 //Quarter turn of nut total movement

//dell=dell_s+dell_c
    
//Area of steel
A_s=%pi*4**-1*D**2

//Area of copper
A_c=%pi*4**-1*(Do**2-Di**2)

//dell=P*L*(A_s*E_s)**-1+P*L*(A_c*E_c)**-1
P=dell*(1*(A_s*E_s)**-1+1*(A_c*E_c)**-1)**-1*L**-1 //LOad

P_s=P*A_s**-1
P_c=P*A_c**-1

//result
printf("\n stress introduced in bolt is %0.2f  N/mm**2",P_s)
printf("\n stress introduced in tube is %0.2f  N/mm**2",P_c)
