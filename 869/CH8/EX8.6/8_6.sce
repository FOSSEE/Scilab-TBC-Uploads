clc
//initialisation of variables
Ns= 8000 //psi
Ss= 4000 //psi
Ws= 25000 //psi
angle= 30 //degrees
L= 4 //in
b= 1 //in
//CALCULATIONS
P= Ns*L*b/((cosd(2*angle))^2)
P1= 2*Ss*L*b/(sind(2*angle))
Pts= Ws*L*b
e= P1/Pts
//RESULTS
if (P<P1) 
    printf ('P= %.2f lb',P)
else
    printf ('P1= %.2f lb',P1)
end
printf (' \n efficiency of the joint=%.2f ',e)
