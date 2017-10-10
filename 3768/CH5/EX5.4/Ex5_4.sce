//Example number 5.4, Page number 85

clc;clear;
close;

//Variable declaration
a=2*10**-10;    //length(m)
n1=2;
n2=4;
m=9.1*10**-31;    //mass(kg)
e=1.6*10**-19;    //charge(c)
h=6.626*10**-34;   //plank constant
//Calculation
E2=n1**2*h/(8*m*e*a);      //energy of second state(eV)
E4=n2**2*h/(8*m*e*a);      //energy of fourth state(eV)
//Result
printf("energy of second state is %.5e eV",E2)
printf("\n energy of second state is %.5e eV",E4)
