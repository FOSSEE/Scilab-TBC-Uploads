//Example 1.14.8 page 1.47
//To find cutoff wavelength..

clc;
clear;
 n1= 1.48;  //RI of core..
 a= 4.5;    //core radius in um..
del= 0.0025;    //Relative RI difference..
V= 2.405;       //For step index fibre..
lamda= (2*%pi*a*n1*sqrt(2*del))/V;      //cutoff wavelength..
printf('The cutoff wavelength is %.2f um ',lamda);
