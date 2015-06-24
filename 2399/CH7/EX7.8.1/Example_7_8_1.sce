// Example 7.8.1 
clc;
clear;
w=25d-6;    //width
v=1d5;      //velocity
r=40d-6;    //radius
eps=12.5d-13;
t=w/v;      //computing drift time
c=eps*3.14*(r)^2/w;     //computing junction capacitance
c=c*10^16;
printf("\nDrift time %.1e sec.\nJunction capacitance %.1f pf.",t,c);
printf("\nCalculation error in the book at the answer of drift time.");

//calculation error in drift time answer in the book is 25*10^-10. it should be 2.5*10^-10.



