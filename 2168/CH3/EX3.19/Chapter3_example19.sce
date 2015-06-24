clc
clear
//Input data
n=4//Four cylinder engine
BHP=40//Brake horse power in h.p
N=3000//Speed in r.p.m
nm=70//Mechanical efficiency in percent
pm=13.5//Indicated mean effective pressure in kg/cm^2
//Bore is equal to stroke

//Calculations
//case(i)
d1=((BHP*100*4500*n*2)/(n*(nm/100)*pm*N*3.14))^(1/3)//Cylinder bore or stroke length in cm

//Case(ii)
d2=((BHP*100*4500*n)/(n*(nm/100)*pm*N*3.14))^(1/3)*10//Cylinder bore or stroke length in cm

//Output
printf('The cylinder sizes for a bore equal to stroke of a four cylinder in case of \n (i)Four stroke engine is %3.1f cm \n (ii)Two stroke engine is %3.0f mm',d1,d2)
