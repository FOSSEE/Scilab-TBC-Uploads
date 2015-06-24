clc;
clear;
format('e',11);
disp("The wave is travelling in the positive x direction due to the negative sign in the argument of the given wave function.");
w=2*%pi*10^7;                   //by inspection of the given wave function.
k=100*2*%pi;                    //by inspection of the given wave function.
v=w/k;
disp(v,"The velocity of the wave,v(in m/s)=");
