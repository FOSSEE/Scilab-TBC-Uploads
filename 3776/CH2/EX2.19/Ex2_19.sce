clear
//Given 
l = 30 //in - The length of the rod
p_1 = 80 //kips - The Force on the end
p_2  = 125 //kips - The force on the other end
A_s = 0.5 //in2 - The crossection of the steel rod
A_a = 0.5 //in2 - The crossection of the aluminium 
E_a = 10*(10**6) //psi - The youngs modulus of the aluminium 
E_s = 30*(10**6) //psi - The youngs modulus of the steel
//Internally stastically indeterminant 
p_a = p_1/4 //From solving we get p_s = 3*P_a
//From material properties point of view 
//stress_steel = stress_aluminium
e = p_a*l*(10**3)/(A_a*E_a) //The end deflection 
printf("\n The end deflection is %0.3f in",e)
