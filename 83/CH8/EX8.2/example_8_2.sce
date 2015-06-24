//Chapter 8
//Example 8.2
//page 301
//To determine determine load sharing and system frequency
clear;clc;
f=50; // system frequency
x=200; //load on first generator(value is assumed first)
delta_f=0.01*x; //from the first equation given in the book
x=(3.75)/(0.01+0.00625); //by substituting (i) in (ii)
delta_f=0.01*x; //recalculating the value
x2=600-x;
printf('\nLoad shared by the generator:\n\t Generator1=%0.2f MW\n\tGenerator2=%0.2f MW\n',x,x2);
printf('\nSystem Frequency=%0.2f Hz\n\n',f-delta_f);
