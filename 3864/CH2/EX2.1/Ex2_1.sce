clear
//
//

//Initilization of Variables
P=45*10**3 //N //Load
E=200*10**3 //N/mm**2 //Modulus of elasticity of rod
L=500 //mm //Length of rod
d=20 //mm //Diameter of rod

//Calculations

A=%pi*d**2*4**-1 //mm**2 //Area of circular rod
p=P*A**-1 //N/mm**2 //stress
e=p*E**-1 //strain 
dell_l=(P*L)*(A*E)**-1

//Result
printf("\n The stress in bar due to Load is %0.5f  N/mm",p)
printf("\n The strain in bar due to Load is %0.5f  N/mm",e)
printf("\n The Elongation in bar due to Load is %0.2f  mm",dell_l)
