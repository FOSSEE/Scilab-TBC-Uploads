clc
//Intitalisation of variables
clear
k1= 1.5 //mm sec^-1
k2= 0.25 //mm sec^-1
p1= 359 //mm
p2= 152 //mm
k3= 1.65 //mm sec^-1
k4= 0.79 //mm sec^-1
p3= 289 //mm
p4= 147 //mm
//CALCULATIONS
m= (log(k1)-log(k2))/(log(p1)-log(p2))
n= (log(k3)-log(k4))/(log(p3)-log(p4))
//RESULTS
printf ('Order of the reaction = %.f ',m)
printf ('\n Order of the reaction = %.f ',n)
