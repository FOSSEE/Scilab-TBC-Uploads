clc
//initialisation of variables
sx= 2000 //lb/ft^3
sy= 2500 //lb/ft^3
T= 800 //lb/ft^3
t= 0.348//radians
//calculations
s1= (sx+sy)/2+sqrt(((sy-sx)/2)^2+T^2)
s2= (sx+sy)/2-sqrt(((sy-sx)/2)^2+T^2)
sn= (sx+sy)/2+(sy-sx)*cos(2*t)/2-T*sin(2*t)
Tn= (sy-sx)*sin(2*t)/2+T*cos(2*t)
//results
printf ('principle stress s1 = % 2f lb/ft^3 ',s1)
printf ('principle stress s2 = % 2f lb/ft^3 ',s2)
printf ('normal stress = % 2f lb/ft^3 ',sn)
printf ('shear stress = % 2f lb/ft^3 ',Tn)
