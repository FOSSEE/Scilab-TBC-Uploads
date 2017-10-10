//Eg-11.12
//pg-494

clear
clc

//From the composite trapezoidal rule, the average voltage is 

h = 10;

V = (1/40)*(h/2)*(189 + 2*213 + 2*205 + 2*213 + 196);

printf('The average voltage is %f volts',V)