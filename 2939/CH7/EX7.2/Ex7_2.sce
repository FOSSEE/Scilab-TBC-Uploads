
// Ex7_2

clc;

// Given:
k=1.04;
m=0.032;// in m^2 i.e., migration area M^2

// Solution: (a) Cubical reactor
a=3.14*sqrt(3*m/(k-1));

printf("\n The approximate critical dimensionsof a Pu 239 is = %f m",a)


// Solution: (a) Spherical reactor
r=a/sqrt(3);

printf("\n \n The radius of the reactor is = %f m",r)
