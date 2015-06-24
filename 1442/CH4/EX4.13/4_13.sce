clc
//initialisation of variables
m= 6.678 //kg
u2= 2826.7 //kJ/kg
u1= 2747.7 //kJ/kg
p1= 8 //Mpa
p2= 7 //Mpa
p3= 6 //Mpa
p4= 5 //Mpa
p5= 4 //Mpa
v1= 29.95 //L/kg
v2= 35.24 //L/kg
v3= 42.23 //L/kg
v4= 51.94 //L/kg
v5= 66.45 //L/kg
//CALCULATIONS
U= m*(u2-u1)
W= m*0.5*((p1+p2)*(v2-v1)+(p2+p3)*(v3-v2)+(p3+p4)*(v4-v3)+(p4+p5)*(v5-v4))
Q=U+W
//RESULTS
printf (' work = %.1f kJ',W) 
printf ('\n heat interaction = %.f kJ',Q) 
