clc
//initialisation of variables
G= 2.68
e= 0.52
g= 9.81 //kN/m^3
h1= 0.7 //m
h2= 1 //m
h3= 1.5 //m
h4= 2 //m
//calculations
//for soil A
sa= (G+e)*g/(1+e)
//point a
Sa= h1*g+h2*sa
u= (h2+h1+h3/2)*g
Es= Sa-u
//point b
sb= h1*g+h4*sa
ub= (h4+h1+h3)*g
Eb= sb-ub
i= h3/2
s= i*g
//results
printf ('effective stress at point a= % 2f kN/m^2 ',Es)
printf ('effective stress at point b= % 2f kN/m^2 ',Eb)
printf ('seepage force per unit voume = % 2f kN/m^3 ',s)
