// Reading on ammeters when their shunts are interchanged

clc;
clear;

I=10;
Ra=1000;
Rsa=0.02;

Rb=1500;
Rsb=0.01;

deff('x=cur(y,z)','x=I*z/y')

Ia1=cur(Ra,Rsa); // Initial Current in meter A
Ia2=cur(Ra,Rsb); // Changed Current in meter A

Ib1=cur(Rb,Rsb); // Initial Current in meter B
Ib2=cur(Rb,Rsa); // Changed Current in meter B

//Factor by which the current readings change in the two ammeters

A=Ia2/Ia1; // Ammeter A
B=Ib2/Ib1; // Ammeter A

printf('The initial current in ammeter A and ammeter B are %g A and %g A respectively. \n \n',I,I)

printf('The current in ammeter A and ammeter B when the shunt resistances are interchanged are %g A and %g A respectively. \n \n',I*A,I*B)



