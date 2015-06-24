//clear//
//Caption:Nonreturn-to-zero polar format
//Figure 6.1(b): Discrete PAM Signals Generation
// [2].Polar NRZ
//page 235
clear;
close;
clc;
x = [0 1 0 0 0 1 0 0 1 1];
binary_negative = [-1 -1 -1 -1 -1 -1 -1 -1 -1 -1];
binary_positive = [1 1 1 1 1 1 1 1 1 1];
L = length(x);
L1 = length(binary_negative);
total_duration = L*L1;
//plotting
a =gca();
a.data_bounds =[0 -2;L*L1 2];
for i =1:L
  if(x(i)==0)
    plot([i*L-L+1:i*L],binary_negative);
    poly1= a.children(1).children(1);
    poly1.thickness =3;
  else
    plot([i*L-L+1:i*L],binary_positive);
    poly1= a.children(1).children(1);
    poly1.thickness =3;
  end
end
xgrid(1)
title('Polar NRZ')
