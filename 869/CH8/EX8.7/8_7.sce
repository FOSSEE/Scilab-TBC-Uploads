clc
//initialisation of variables
T= 15000 //psi
h1= 3 //in
h2= 2.5 //in
t= 0.25 //in
r= 5/16 //in
d= 1 //in
//CALCULATIONS
P1= T*(h1-d)*t/2.18
P2= T*h2*t/1.7
if (P1<P2)
    printf ('Safe axial load= %.2f lb',P1)
else 
    printf ('Safe axial load= %.f lb',P2)
        
end
