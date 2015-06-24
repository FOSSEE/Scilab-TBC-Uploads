clc
//initialisation of variables
h= 6.624*10^-27 //ergs sec
c= 3*10^10 //cm/sec
u= 5 //cm^-1
//CALCULATIONS  
T= h/(h*2*%pi*c*u)
//RESULTS
printf (' lifetime of this excited state = %.e sec',T)
