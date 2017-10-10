//Example number 5.7, Page number 87

clc;clear;
close;

//Variable declaration
a=1*10**-10;    //length(m)
n2=2;
n3=3;
m=9.1*10**-31;    //mass(kg)
e=1.6*10**-19;    //charge(c)
h=6.626*10**-34;   //plank constant
//Calculation
E1=h**2/(8*m*e*a**2);
E2=n2**2*E1;      //energy of 1st excited state(eV)
E3=n3**2*E1;      //energy of 2nd excited state(eV)
//Result
printf("ground state energy is %.2f eV",E1)
printf("\n energy of 1st excited state is %.2f eV",E2)
printf("\n energy of 2nd excited state is %.2f eV",E3)
//answer in the book varies due to rounding off errors
