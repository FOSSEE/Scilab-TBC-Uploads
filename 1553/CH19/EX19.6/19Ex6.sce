//chapter 19 Ex 6

clc;
clear;
close;
sStream=2; dist=6; t=33/60;
//let sBoat be x, thus (6/(x-2)+6/(x+2))=33/60; solving this we get the equation as
// 11x^2-240x-44=0

 mycoeff=[-44 -240 11];
p=poly(mycoeff,"x","coeff");
r=abs(roots(p));   //absolute since the speed cannot be negative
printf("The speed of motorboat in still water is %d km/hr",r(1));
