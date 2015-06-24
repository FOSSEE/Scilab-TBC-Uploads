clc
//initialisation of variables
t= 40 //min
r= 0.274
t1= 50 //min
//CALCULATIONS
k= 2.3*log10(1/(1-r))/t
R=10^( -k*t1/2.3)
R1= 1-R
//RESULTS
printf (' velocity constant= %.4f min^-1',k)
printf (' \n fraction decomposed= %.3f ',R1)
