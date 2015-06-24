

clc
//initialisation of variables
clear
h= 76 //cm
s= 13.6
w= 62.4 //lbf/ft^3
//CALCULATIONS
cw= h*s
Iw= cw/2.54
fw= Iw/12
P= w*fw
p= P/144
//RESULTS
printf (' pressure in Feet of water = %.2f ',fw)
printf (' \n pressure in pounds per inch = %.1f ',p)
