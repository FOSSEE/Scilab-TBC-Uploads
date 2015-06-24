clc 
//initialisation of variables
d1= 3 //in
d2= 6 //in
v= 6 //ft/sec
g= 32.2 //ft/sec^2
//CALCULATIONS
v1= v*(d1/d2)^2
L= (v-v1)^2/(2*g)
//resultsa
printf ('Loss due to sudden enlargment= %.4f ',L)
