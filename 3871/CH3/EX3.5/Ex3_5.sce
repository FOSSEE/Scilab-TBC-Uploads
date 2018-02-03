//===========================================================================
//chapter 3 example 5
clc;
clear all;

//variable declaration
er      = 1.5*10^-2;                   //accuracy 
A1       = 10;                           //current in A
A2      = 2.5;                          //current in A

//calculations
dA      = er*A1;                        //magnitude of limiting error of the instrument 
er1      = dA/(A2);                //magnitude of current 
A11      = A2*(1+er1);                   //current in A
A12      = A2*(1-er1);                   //current in A
er2      = (dA/(A2))*100;                //limiting error in %

//result
mprintf("limiting values of current  =%3.2f A and  %3.2f",A11,A12);
mprintf("\nlimiting error = %3.1f percentage',er2);

