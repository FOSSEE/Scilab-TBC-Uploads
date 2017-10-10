//Determine the size of the conductor at 25 m distance

clc;
clear;

V=230; // Supply Voltage
d=25; // Distance between mains and residence
I=5; // Supply current

pvd=1+((2/100)*V); // Permissible Voltage drop

// From the table given in the result sheet along with this code, Minimum size of wire for 10A

A=1.5*(10^-6);

dm=2.3;
Vd=d/dm; // Voltage drop at 10A

Vd5=Vd/2; // Voltage drop at 5A

//According to the table (Refer below) Permissible drop is 5.6 V

printf('The pemissible voltage drop = %g V\n',pvd)
printf('The voltage drop at 5 A = %g V\n',Vd5)
printf('As the permissible drop is 5.6 volts \nand the conductor with 1.5 mm^2 section gives \nvoltage drop of 5.4 volts hence the suitable size is 1/1.40 mm.')
printf('\n \n Refer the table in the result sheet \n')
