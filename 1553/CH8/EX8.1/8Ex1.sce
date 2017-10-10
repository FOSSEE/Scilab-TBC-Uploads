//chapter 8 Ex 1

clc;
clear;
close;
//let rajeev's age be x
//by the given condition:  equation is x+15=5(x-5);
mycoeff=[-40 4];
p=poly(mycoeff,"x","coeff");
ageRajeev=roots(p);
mprintf("Present age of rajeev is %d years",ageRajeev);


