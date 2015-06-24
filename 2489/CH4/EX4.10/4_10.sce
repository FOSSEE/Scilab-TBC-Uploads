clc
//Intitalisation of variables
clear
n= 8.41*10^-5 //poise
p= 1 //atm
v= 22414 //ml
m= 2 //gms
T= 0 //C
R= 8.31*10^7 //ergs deg^-1 mole^-1
//CALCULATIONS
d= m/v
c= sqrt(8*R*(273+T)/(%pi*m))
l= 3*n/(d*c)
//RESULTS
printf ('Density of hydrogen gas = %.1e gram cc^-1',d)
printf ('\n Mean velocity = %.2e cm sec^-1',c)
printf ('\n Mean free path of the molecules = %.2e cm',l)
