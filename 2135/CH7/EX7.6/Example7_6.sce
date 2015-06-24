//Ex 7.6
clc;
clear;
close;
format('v',7);

//Given data :
n1=6;//cylinders
IP=100;//KW
N=800;//rpm
Lbyd=1.25;//stroke to bore ratio
Etta_m=80/100;
bmep=5;//bar

//Calculation
n=N/2;//No. of strokes/min
//IP=Pm*%pi/4*d^2*d*Lbyd*n/60000
d=(IP/(bmep*%pi/4*Lbyd*n/60000))^(1/3);//m
L=Lbyd*d;//m
disp(d,"Diameter in meter : ");
disp(L,"Length ofstroke in meter :  ");
//Solution is not complete in the book.
