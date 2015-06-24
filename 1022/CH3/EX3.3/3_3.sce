clc
//initialisation of variables
l= 400 //mm
t1= 20 //degrees
t2= 90 //degrees
alpha= 19.3*10^-6 //degrees^-1
//CALCULATIONS
L= alpha*(t2-t1)*l
L1= L+l
//RESULTS
printf ('L= %.2f mm',L1)
