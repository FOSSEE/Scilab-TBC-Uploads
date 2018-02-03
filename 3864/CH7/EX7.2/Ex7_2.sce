clear
//
//

//Initilization of Variables

d=25 //mm //Diameter of circular bar
F=20*10**3 //N //Axial Force
theta=30 //Degree //angle 

//Calculations

//Axial stresses
p=F*(%pi*4**-1*d**2)**-1 //N/mm**2

//Normal Stress
p_n=p*(cos(30*%pi*180**-1))**2

//Tangential Stress
p_t=p*2**-1*sin(2*theta*%pi*180**-1)

//Max shear stress occurs on plane where theta2=45 
theta2=45
sigma_max=p*2**-1*sin(2*theta2*%pi*180**-1)

//Result
printf("\n Stresses developed on a plane making 30 degree is: %0.2f  N/mm**2",p_n)
printf("\n                                                  : %0.2f  N/mm**2",p_t)
printf("\n stress on max shear stress is %0.2f  N/mm**2",sigma_max)
