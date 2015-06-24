//example 7.10
clc; funcprot(0);
// Initialization of Variable
h1=390.88;
h2s=285.27;
k=74.0;//Wcvdot/mdot
ks=h1-h2s;//(Wcvdot/mdot)s
nt=k/ks*100;
disp(nt,"efficiency in %");
clear()
