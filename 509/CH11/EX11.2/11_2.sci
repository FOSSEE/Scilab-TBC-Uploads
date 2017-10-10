//Chapter 11 Example 2//
clc
clear
// capacitance value of pin to earth=c,capacitance of top unit=c1//
c=1;
c1=5;// let us assume to be//
// since voltage across c2 same as c1//
c2=c+c1;
printf("\n So capacitance across the second unit c2 =  %.fC \n",c2);
c3=2*c+c2;// since capacitance across c3=c2+2 times capicatnce of c//
printf("\n So capacitance across the third unit c3 =  %.fC \n",c3);