clc
clear 

printf('example 1.7 page number 28 \n\n')

//to find vapor pressure using duhring plot

t1 = 41     //in degree C
t2=59        //in degree C
theta_1 =83        //in degree C
theta_2=100        //in degree C

K = (t1-t2)/(theta_1-theta_2);
t=59+(K*(104.2-100));

printf ("boiling point of SCl2 at 880 Torr = %f degree celcius",t)
