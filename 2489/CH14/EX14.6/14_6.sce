clc
//Intitalisation of variables
clear
c1= 0.1 //M
c2= 0.01 //M
k= 0.05915 //volt
t1= 0.172
t2= 0.828 
//CALCULATIONS
El= (t1-t2)*k*log10(c2/c1)
//RESULTS
printf ('Liquid junction potential = %.3f  ',El) 
