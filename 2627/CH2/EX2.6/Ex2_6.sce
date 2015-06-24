//Ex 2.6
clc;clear;close;
format('v',5);
N=300;//turns
L=10;//mH
I=5;//A
fi=L*10^-3/N*I*10^6;//micro Wb
disp(fi,"(a) Flux produced(micro Wb)");
//on reverse the current
delta_fi=2*fi;//micro Wb
//(as it goes to zero and increase to same value in reverse direction)
deltaT=8*10^-3;//seconds
dfiBYdT=delta_fi*10^-6/deltaT;//Wb/s
emf=N*dfiBYdT;//V(Average emf induced)
disp(emf,"(b) Average emf induced(V)");
