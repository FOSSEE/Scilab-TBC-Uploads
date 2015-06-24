clc
//initialisation of variables
w= 8 //in
wperft= 35 //lb/ft
A= 10.3 //sq in
F1= 3 //tons
F2= 3 //tons
F3= -8 //tons
F4= -8 //tons
F5= -5 //tons
F6= -5 //tons
Pl= 12 //in
Pb= 12 //in
//CALCULATIONS
Sa= (F1+F2)*2000/A
Sb= -(F3+F4+F1+F2)*2000/A
Sc= -(F3+F4+F1+F2+F5+F6)*2000/A
Sp= -(F3+F4+F1+F2+F5+F6)*2000/(Pl*Pb)
//RESULTS
printf ('Stress in a= %.2f psi tension',Sa)
printf (' \n Stress in b=%.2f psi tension',Sb)
printf (' \n Stress in c=%.2f psi tension',Sc)
printf (' \n Stress in plate=%.2f psi tension',Sp)
