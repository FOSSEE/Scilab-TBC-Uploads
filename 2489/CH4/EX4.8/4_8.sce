clc
//Intitalisation of variables
clear
t1= 1.44 //min
t2= 1.8 //min
mo= 32 //gms
mh= 2 //gms
//CALCULATIONS
d2= (t1/t2)^2*(mo/mh)
//RESULTS
printf ('Approximate density of gas relative to hydrogen = %.1f ',d2)
