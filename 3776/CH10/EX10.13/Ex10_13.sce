clear
//Given 
l = 50.0           //mm - The length of the crossection 
b = 50.0           //mm - the width of the crossection
m = 15.3           // mass of the falling body
h = 75.0           //mm - The height of the falling body 
p = m*9.81         //N the force acted due to the body
L = 1000.0         //mm The length of the cantilever
E = 200  //GPa The youngs modulus of the material used 
I = (l**4)/12 //mm - the moment of inertia 
k = 300 //N/mm -the stiffness of the spring 
//Rigid supports 
e = m*9.81*(L**3)*(10**-3)/(48*E*I) //mm - the deflection of beam 
imp_fact_a = 1 +((1 +2*h/e)**0.5) //no units ** impact factor 
//spring supports
e_spr = h/k //mm the elongation due to spring 
e_total = e_spr + e 
imp_fact_b =  1 +((1 +2*h/e_total)**0.5) //no units ** impact factor
printf("\n a) The maximum deflection when the beam is on rigid supports %0.3f mm with impact factor %0.2f ",e,imp_fact_a)
printf("\n b) The maximum deflection when the beam is on spring supports %0.2f mm with impact factor %0.2f ",e_total,imp_fact_b)
