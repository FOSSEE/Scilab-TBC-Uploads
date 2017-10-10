//Ex 7.1 page 260

clc;
clear;
close;

N1=1000;// rpm
Va1=200;// V
alfa=60;// degree
Va2=230;// V

N2=2*Va2*sqrt(2)*cos(alfa*%pi/180)*N1/Va1/%pi
printf('\n Speed of motor = %d rpm',N2)
// ans in the textbook is not accurate.
