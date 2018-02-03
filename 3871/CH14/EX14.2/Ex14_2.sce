//===================================================================================
//Chapter 14 example 2

clc;
clear all;

//variable declaration
D       = 16;           //output voltage in V

//calculations
Dn1        = D/(2^1);          //first MSB output in V
Dn2       = D/(2^2);          //second MSB output in V
Dn3       = D/(2^3);          //third MSB output in V
Dn4       = D/(2^4);          //fourth MSB output in V
Dn5       = D/(2^5);          //fifth MSB output in V
Dn6       = D/(2^6);          //Sixth MSB output in V
V           = Dn1+Dn2+Dn3+Dn4+Dn5+Dn6;
Vout        = ((D*(2^0))+(D*(2^1))+(0*(2^2))+(D*(2^3))+(0*(2^4))+(D*(2^5)))/(2^6);      //for digital input 101011

//result
mprintf(" first MSB output = %3.2f V",Dn1);
mprintf("\n second MSB output = %3.2f V",Dn2);
mprintf("\n third MSB output = %3.2f V",Dn3);
mprintf("\n fourth MSB output = %3.2f V",Dn4);
mprintf("\n fifth MSB output = %3.2f V",Dn5);
mprintf("\n Sixth MSB output = %3.2f V",Dn6);
mprintf("\nthe resolution is equal to the weight of the LSB = %3.2f V",Dn6);
mprintf("\nthe full scale output for digital input of 101011 =%3.2f V",V);
mprintf("\nthe voltage output for a digital input of 101011 = %3.2f V",Vout);
