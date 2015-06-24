clc;
close();
clear();
//page no 418
//prob no. 12.14
//Absolute gains
G1=20;
G2=15;
G3=12;
//Temp in K
Te1=100;
Te2=200;
Te3=300;
Te=Te1+Te2/G1+Te3/G1/G2

mprintf('Noise Temperature ,Te=%.0f K\n',Te);
