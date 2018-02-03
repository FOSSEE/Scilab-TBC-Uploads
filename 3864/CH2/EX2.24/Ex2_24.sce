clear
//
//

//Initilization of Variables

A_C=230*400 //mm //Area of column
D_s=12 //mm //Diameter of steel Bar
P=600*10**3 //N //Axial compression
//E_s*E_c=18.67
n=8 //number of steel Bars

//Calculations  

A_s=%pi*4**-1*D_s**2*n //Area of steel //mm**2 
A_c=A_C-A_s //mm**2 //Area of concrete

//From static Equilibrium condition
//P_s+P_c=600   .........(1)

//Now from compatibility Equation dell_l_s=dell_l_c we get,
//P_s*L*(A_s*E_s)**-1=P_c*L*(A_c*E_c)**-1

//Substituting values in above Equation we get
//P_s=0.1854*P_c

//Now Substituting value of P_s in Equation (1),we get
P_c=600*1.1854**-1
P_s=600-P_c

//Stress in steel
sigma_s=P_s*10**3*A_s**-1 //N/mm**2

//Stress in copper
sigma_c=P_c*10**3*A_c**-1 //N/mm**2

//Result
printf("\n Stresses Developed in Two material are:sigma_s %0.2f  N/mm**2",sigma_s)
printf("\n                                       :sigma_c %0.2f  N/mm**2",sigma_c)
