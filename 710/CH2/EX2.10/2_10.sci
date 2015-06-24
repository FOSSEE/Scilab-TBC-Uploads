clc();
clear;
//To determine the lattice parameter
h=1;
k=0;
l=1;
d101=0.5;            //spacing of (101) plane
//d101=a/sqrt((h^2)+(k^2)+(l^2))
a=d101*sqrt(2)      //lattice parameter
printf("The lattice parameter is %f A",a);