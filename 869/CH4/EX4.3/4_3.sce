clc
//initialisation of variables
W= 100 //lb
a1= 30 //degrees
a2= 45 //degrees
//CALCULATIONS
A=[(cosd(a2)),(-cosd(a1));(sind(a2)),(sind(a1))]
b=[0;W]
c= A\b
Tbc= c(1,1)
Tab= c(2,1)
//RESULTS
printf ('Tbc= %.1f lb',Tbc)
printf (' \n Tab=%.1f lb',Tab)
