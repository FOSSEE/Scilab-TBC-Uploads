 //Calculate the Potential Energy of Intraction  in between Sodium ion and HCl molucule

//Example 16.2

clc;

clear;

mew=1.08*3.33*10^-30;  //Dipole moment in C m

r=4.0*10^-10; //Distance between Sodium ion and HCl molucule in m

epsilion=8.854*10^-12; //Molar absorption cofficient in C^2 N^-1 m^-2

q=1.602*10^-19; //Charge on electron in C

V1=-(q*mew)/(4*%pi*epsilion*r^2); //Potential energy of intraction in J

V=V1*6.023*10^23/1000; //Potential energy of intraction in kJ mol^-1

printf("Potential energy of intraction in between Sodium ion and HCl molucule = %.0f kJ mol^-1",V); 

