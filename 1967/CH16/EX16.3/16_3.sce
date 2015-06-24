clc
//initialisation of variables
clear
mu= 1
mb= 2
m= 1 
m1= 2
//CALCULATIONS
ym1= 0.5*(mu*m^2+mu*m^2)
ym2= 0.5*(mb*m^2+m*m1^2)
ym3= 0.5*(mu*m1^2+mu*m1^2)
//RESULTS
printf ('ionic strength of solution = %.f *m',ym1)
printf ('\n ionic strength of solution = %.f *m',ym2)
printf ('\n ionic strength of solution = %.f *m',ym3)
