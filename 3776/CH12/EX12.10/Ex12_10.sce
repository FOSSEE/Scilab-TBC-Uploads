clear
//Given
A_1 = 0.125         //sq.in , The area of the crossection of AB
A_2 = 0.219         //sq.in , The area of the crossection of BC
l_1 = 3*(5**0.5)    //in , The length of AB
l_2 = 6*(2**0.5)    //in , The length of BC
p = 3               //k , Force acting on the system 
E = 10.6*(10**3)    //ksi - youngs modulus of the material
p_1 = (5**0.5)*p/3  //P, The component of p on AB
p_2 = -2*(2**0.5)*p/3 //P, The component of p on AB

e = p_1*l_1*p_1/(p*E*A_1) + p_2*l_2*p_2/(p*E*A_2) //in, By virtual deflection method  
printf("\n The deflection is %0.3f in",e)
