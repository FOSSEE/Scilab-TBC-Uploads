clear
//

//Initilization of Variables
      
A=15*0.75 //mm**2 //area of steel tape
P=100 //N //Force apllied
L=30*10**3 //mm //Length of tape
E=200*10**3 //N/m**2 //Modulus of Elasticity of steel tape
AB=150 //m //Measurement of Line AB 

//Calculations

dell_l=P*L*(A*E)**-1 //mm //Elongation
l=L+dell_l*10**-3 //mm //Actual Length 
AB1=AB*l*L**-1 //m Actual Length of AB

//Result
printf("\n The Actual Length of Line AB is %0.2f  m",AB1)
