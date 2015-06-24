clc
//initialisation of variables
k= 13
e= 4.8*10^-10 //ev
h= 6.624*10^-27 //ergs sec
N= 6.023*10^23 //molecules
l= 1836 //A
//CALCULATIONS
I= e^4*0.080/(l*N*1.28*10^-13*2*k^2*(h/(2*%pi))^2)
//RESULTS
printf (' least energy required for transfer= %.2f ev',I)
