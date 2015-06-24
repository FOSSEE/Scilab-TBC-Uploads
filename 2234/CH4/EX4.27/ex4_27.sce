clc;
eo=8.85*10^-12;  //constant
V=6;  //v in volt
A=25*10^-4;  //area in m square
d=10^-3;  //distance in m
q=(eo*A*V)/d;  //calculating charge
W=q*V;   //calculating work done
disp(q,"Charge through battery in Coulomb = ");  //displaying result
disp(W,"Work done by Battery in Joule = ");  //displaying result