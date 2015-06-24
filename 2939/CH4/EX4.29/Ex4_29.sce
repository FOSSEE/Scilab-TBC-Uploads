
// Ex4_29
clc;

// Given:
t=3.82;// in days
// Solution:
// part(a)
days=1;
D1=(1-(exp(-0.693*days/t)))*100;
printf("\n The fraction decayed in 1 day will be %f.",D1)
// part(b)
days=5;
D1=(1-(exp(-0.693*days/t)))*100;
printf("\n The fraction decayed in 5 days  will be %f.",D1)
// part(c)
days=10;
D1=(1-(exp(-0.693*days/t)))*100;
printf("\n The fraction decayed in 10 days  will be %f.",D1)
// part(d)
days=6*t;
D1=(1-(exp(-0.693*days/t)))*100;
printf("\n The fraction decayed in 6 half lives will be %f.",D1)
// part(e)
n=log(0.001)/log(0.5);
printf("\n Time needed for the decay of 99.9 percent is %f half lives i.e.%f days.",n,t*n)
