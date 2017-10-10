//chapter 8 Ex 3

clc;
clear;
close;
//let ankita's age be x, thus nikita'a age=240/x
//by the given condition: 2*240/x-x=4; equation is: x^2+4*x-480;
mycoeff=[-480 4 1];
p=poly(mycoeff,"x","coeff");
ageAnkita=roots(p);
ageNikita=240/ageAnkita(2);//since age cannot be negative
printf("Age of Nikita is %d years",ageNikita);


