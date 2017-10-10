clear
dia = 50 //mm - diameter of aluminium 
p = 100 // KN - instant force applid
dia_c = 0.1215 //mm- change in diameter 
l_c = 0.219 //mm - change in length
l = 300 //mm - length 
strain_dia = dia_c/dia // lateral strain 
strain_l = l_c/l //longitudinal strain 
po = strain_dia/strain_l // poission ratio 
area = 3.14*dia*dia/4 //mm2 area
E = p*l/(area*l_c) //N/mm2 youngs modulus 
printf("\n The lateral strain is: %0.3f no units",strain_dia)
printf("\n The longitudinal strain is: %0.3f no units",strain_l)
printf("\n The poissions ratio is: %0.3f no units",po)
printf("\n Youngs modulus: %0.2f N/sq.mm",E)
