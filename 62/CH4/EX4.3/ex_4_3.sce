clear;
 clc;
 syms n z X;
 x=[5 3 -2 0 4 -3]
 X=0;
 for i=-2:3;
     X=X+x(i+3)*z^-i
 end
 