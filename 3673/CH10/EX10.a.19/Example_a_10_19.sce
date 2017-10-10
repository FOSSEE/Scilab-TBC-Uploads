//Example_a_10_18 page no:479
clc;
N=500;
l1=(20+20)*10^-2;
l2=(20+8)*10^-2;
l3=1*10^-3;
mu1=800*4*%pi*10^-7;
mu2=800*4*%pi*10^-7;
mu3=4*%pi*10^-7;
A1=16*10^-4;
A2=64*10^-4;
A3=64*10^-4;
phi=1*10^-3;
I=(((l1/(A1*mu1))+(l2/(A2*mu2))+(l3/(A3*mu3)))*phi)/500;
disp(I,"the current to be passed through the coil "'C"' is (in A)");
//the calculation in text book is wrong,here the value of current is correctly calculated, calculation at one of the denominator is wrong in text book
