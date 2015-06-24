// Example 4.4.1  page 4.8

clc;
clear;

L=30;       //fiber length
Pin=200d-6;     //input power
alpha=0.8;      //signal attenuation per km

Pout=Pin/(10^(alpha*L/10));     //computing output power
Pout=Pout*10^6;
printf("\nOutput power is %.3f microwatt.",Pout);
printf("\nNOTE - calculation error in the book.\nThey have taken 0.8*30=2.4 which actually is 24.");

//calculation error in the book.They have taken 0.8*30=2.4 which actually is 24.
//answer in the book is 115.14 microwatt.(incorrect)
