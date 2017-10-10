//Chapter-5,Example 9,Page 125
clc();
close();

 //final concentration is half of initial concentration
//therefore t =t_half
t= 60   //time in minutes

t_half=t

k=5.2*10^-3   //rste constant

a=1/(k*t_half)   //for 2nd order reaction

printf('the initial concentration is %.2f mol/litre',a)
