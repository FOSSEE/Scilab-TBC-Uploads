clc;
clear;
format('e',11);
d=0.01/0.0254;                          //in inches.
r=d/2;
l=1;                                    //in inches.
N=20;
L=(r^2)*(N^2)/(9*r+10*l);             //Wheeler's formula.
disp(L,"The inductance of the coil by Wheelers formula,L(in micro H)=");
