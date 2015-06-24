clc
//initialisation of variables
k1= 0.02 //cm/sec
e1= 0.5 
e2= 0.65
//calculations
k2= k1*(e2^3/(1+e2))/(e1^3/(1+e1))
//results
printf ('hydraulic conductivity at void ratio of 0.65 = % 2f cm/sec ',k2)
