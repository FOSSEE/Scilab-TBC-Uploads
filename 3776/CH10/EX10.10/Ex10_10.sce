clear
k = 24.0*(10**12)    //N.mm2 Flexure rigidity
E = 200.0            //Gpa - Youngs modulus of the string
l = 5000.0           //mm - The length of the string
C_A = 300.0          //mm2 - crossection area 
P = 50.0             //KN - The force applies at the end 
a = 2000.0           //mm - The distance C-F
x = 1//X - let it be a variable X
y_d = x*(a**3)/(3*k)                                 //Xmm The displacement at D, lets keep the variable in units part
y_p  = -P*(10**3)*(16*(a**3)-12*(a**3)+(a**3))/(k*6) //mm The displacement due to p 
e_rod = l/(C_A*E*(10**3))                            //Xmm -deflection, The varible is in units 
e_rod
X = y_p/(2*e_rod+y_d)  // By equating deflections 
y_d_1 = X*(a**3)/(3*k) // the deflection of point D
printf("\n The deflection of point D %0.2f mm",y_d_1)
