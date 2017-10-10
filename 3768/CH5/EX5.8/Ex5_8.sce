//Example number 5.8, Page number 88

clc;clear;
close;

//Variable declaration
n=poly([0],'n');
a=4*10**-10;    //width of potential well(m)
m=9.1*10**-31;    //mass(kg)
e=1.6*10**-19;    //charge(c)
h=6.626*10**-34;   //plank constant
//Calculation
E1=n**2*h**2/(8*m*e*a**2);     //maximum energy(eV)
//Result
disp(E1,"maximum energy in eV is")
