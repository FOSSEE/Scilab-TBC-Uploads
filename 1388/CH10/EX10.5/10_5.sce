clc
//initialisation of variables
t= 5600 //sec
r= 0.256
//CALCULATIONS
t1= (t/0.693)*2.303*log10(1/r)
//RESULTS
printf (' Time= %.f years ago',t1-13)
