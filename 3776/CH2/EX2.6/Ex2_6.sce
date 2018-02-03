clear
dia = 50 //mm - diameter of aluminium
p = 100 // KN - instant force applied
dia_c = 0.01215 //mm- change in diameter
l_c = 0.219 //mm - change in length
l = 300 //mm - length
strain_dia = -dia_c/dia // lateral strain
strain_l = -l_c/l //longitudinal strain
po = strain_dia/strain_l // Poisson ratio
area = 3.14*dia*dia/4 //sq.mm area
E = p*l/(area*l_c) //N/sq.mm youngs modulus
printf("\n The lateral strain is: %e mm/mm",strain_dia)
printf("\n The longitudinal strain is: %e no units",strain_l)
printf("\n The Poissons ratio is: %0.3f no units",po)
printf("\n Youngs modulus: %0.2f GPa",E)
