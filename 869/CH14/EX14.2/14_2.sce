clc
//initialisation of variables
P= 10000 //lb
A= 11.77 //in^2
Z= 51.9 //in^3
x= 5 //ft
y= 12 //ft
//CALCULATIONS
S1= -P/A
S2= P*x*y/Z
Sc= S1-S2
St= S1+S2
//RESULTS
printf ('Axial stress at c= %.1f psi',Sc)
printf (' \n Axial stress at t= %.1f psi',St)
