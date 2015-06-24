clc
//initialisation of variables
h= 6.624*10^-27//erg/sec
N= 6.023*10^23
c= 3*10^10 //m/sec
w= 2359.6 //cm^-1
T= 2000 //K
K= 1.380*10^-16
R= 1.987 //cal mol^-1 k^-1
//CALCULATIONS
x= h*c*w/(K*T)
y= 2.71^x
H= 3.5*R+(N*h*c*w/(T*4.184*10^7*(y-1)))
//RESULTS
printf (' Heat= %.3f cal mol^-1 deg^-1',H)
