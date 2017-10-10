clear
//given 
hp = 63000              //horse power
T = hp*20*(10**-3)/63   //k-in the torsion implies due to horse power
stress_allow_shear = 6  //ksi- The maximum allowable shear stress
M_ver = 6.72/2          //k-in the vertical component of the moment 
M_hor = 9.10            //k-in the horizantal component of the moment 
//Caliculations 

M = (((M_ver**2)+(M_hor**2))**0.5)                                 //K-in The resultant 
d = ((16*(((M**2)+(T**2))**0.5)/(stress_allow_shear*3.14))**0.333) //in** The suggested diameter from derivation
printf("\n The suggested diameter is %0.2f in",d)
