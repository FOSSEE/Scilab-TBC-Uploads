//Scilab Code for Example 5.13 of Signals and systems by
//P.Ramakrishna Rao
//Circular Convolution
clear;
//First Causal sequence
x=[1,4,3,2;2,1,4,3;3,2,1,4;4,3,2,1]
//Second Sequence
y=[4;3;2;1]
//Conolution
z=x*y;
disp(z,'Convolution Of x & y is:')
