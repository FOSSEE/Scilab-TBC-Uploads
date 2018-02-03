clear
//
//

//Initilization of Variables

D=20 //mm //Diameter of Bolts
Di=25 //m //internal Diameter
t=10 //mm //Thickness of bolt
E_s=2*10**5 //N/mm**2 //Modulus of Elasticity
E_c=1.2*10**5 //N/mm**2 //Modulus of copper
p=3 //mm //Pitch
theta=30 //degree
L_c=500 //Lengh of copper 
L_s=600 //Length of steel

//Calculations

//Let P_s be the Force in each bolt and P_c be the FOrce in copper tube
//From Static Equilibrium condition
//P_c=2*P_s

//As nut moves by 60 degree.If nut moves by 360 degree its Longitudinal movement is by 3 mm
dell=theta*360**-1*p

//From Compatibility Equaton we get
//dell=dell_c+dell_s


A_s=%pi*4**-1*Di**2 //mm**2 //Area of steel
A_c=%pi*4**-1*(45**2-Di**2) //mm**2 //Area of copper

//Force introduced in steel
P_s=0.5*(2*L_c*(A_c*E_c)**-1+L_s*(A_s*E_s)**-1)**-1 //N
P_s2=P_s*A_s**-1

//Force introduced in copper     
P_c=2*P_s*A_c**-1 //N

//Result
printf("\n Stress introduced in bolt is %0.2f  N/mm**2",P_s2)
printf("\n stress introduced in tube is %0.2f  N/mm**2",P_c)
