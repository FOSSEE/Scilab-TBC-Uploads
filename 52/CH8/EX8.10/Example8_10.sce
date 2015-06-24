//Example 8.10
//Develop a two band polyphase decomposition for the transfer function
//H(z)=z^2+z+2/z^2+0.8z+0.6
clear;
clc ;
close ;
z=%z;
HZ=(z^2+z+2)/(z^2+0.8*z+0.6);
HZa=horner(HZ,-z);
P0=0.5*(HZ+HZa);
P1=0.5*(HZ-HZa);
disp(P1/z,'+',P0,'H(z) =')