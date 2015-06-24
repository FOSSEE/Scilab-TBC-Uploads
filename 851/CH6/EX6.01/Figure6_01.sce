//clear//
//Caption:Nonreturn-to-zero unipolar format
//Figure 6.1(a): Discrete PAM Signals Generation
//[1].Unipolar NRZ 
//page 235 
clear;
close;
clc;
x = [0 1 0 0 0 1 0 0 1 1];
binary_zero = [0 0 0 0 0 0 0 0 0 0];
binary_one = [1 1 1 1 1 1 1 1 1 1];
L = length(x);
L1 = length(binary_zero);
total_duration = L*L;
//plotting
a =gca();
a.data_bounds =[0 -2;L*L1 2];
for i =1:L
  if(x(i)==0)
    plot([i*L-L+1:i*L],binary_zero);
    poly1= a.children(1).children(1);
    poly1.thickness =3;
  else
    plot([i*L-L+1:i*L],binary_one);
    poly1= a.children(1).children(1);
    poly1.thickness =3;
  end
end
xgrid(1)
title('Unipolar NRZ')
