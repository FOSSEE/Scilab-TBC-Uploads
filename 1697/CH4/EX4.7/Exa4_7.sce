//Exa 4.7
clc;
clear;
close;
//given data :
n=10;//no. of elements
//d=lambda/4 separation in meter
disp("Do=1.789*4*n*d/lambda");
disp("Putting d=lambda/4 we get D=1.789*n")
Do=1.789*n;//directivity : unitless
Dodb=10*log10(Do);//in db
disp(Dodb,"Do in db = ");