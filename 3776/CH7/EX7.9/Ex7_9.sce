clear
//Given
dia = 15      //mm - The diameter of the rod
h = 0.5       //mt - The freely falling height 
A = 3.14*(dia**2)/4 //mm2 The area of the crossection
E = 200             //Gpa -Youngs modulus
L = 750             //mm - The total length of the rod
G = 80              //gpa - Shear modulus 
N = 10              //number of live coils
d = 5               //mm the diameter of live coil 
m = 3               // the mass of freely falling body
H = 500             //mm -from mass to spring  
F= m*9.81           //Kg the force due to that mass
p = 3        //KN-m _ the load applied
//e = e_rod + e_spr
//e_rod
e_rod = p*L*(10**-3)/(A*E)                  //mm The elongation due to freely falling body
//e_spr
e_spr = 64*F*(dia**3)*N*(10**-3)/(G*(d**4)) //mm The elongation due to spring
e = e_rod + e_spr                           //mm The total elongation 
p_dyn =F*(1+((1+(2*H/e))**0.5))
Stress_max = p_dyn/A                        //MPa - The maximum stress in the system 
printf("\n The maximum stress in the system  %0.2f MPa",Stress_max)
