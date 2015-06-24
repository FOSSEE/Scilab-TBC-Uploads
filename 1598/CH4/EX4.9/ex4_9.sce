clc;
e=-1.6*10^-19;  //charge on electron in Coulomb
q=20*10^-6;  //charge in Coulomb
r1=0.1;  //r1 in m
r2=0.05;  //r2 in m
Va=9*10^9*(q/r1);  //calculating voltage at A
Vb=9*10^9*(q/r2);  //calculating voltage at B
V=Va-Vb;    //potential difference
W=V*e;     //calculating work done in joule
disp(W,"Work done to take the electron from A to B in Joule = ");  //displaying result