//chapter 36
//example1
clc
//given
u0=4*%pi*10^-7//in weber/amp-m   Mu-not=u0
N=10^3//no.of turns
a=5*10^-2//im meter
b=10*10^-2 //in meter
h=1*10^-2// in metre
L=(u0*N^2*h)/(2*%pi)*log(b/a)
disp(L,"Inductance of a toroid of recyangular cross section in henry is")
