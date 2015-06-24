clc;
clear;
P0=2/3; //P(X=0)
P1=2/3; //P(Y=0)
H_x=0.919;
H_y=0.919;
H_b=0.919; //Hb(2/3)

//since X,Y pair is uniformly distributed on  three values
H_xy=log2(3); // H(X,Y)

H_xdivy=H_xy-H_y; //H(X/Y)=H(X,Y)-H(Y)
I_xdivy=H_x-H_xdivy; //I(X,Y)=H(X)-H(X/Y)

disp(I_xdivy,"I(X,Y)=");


