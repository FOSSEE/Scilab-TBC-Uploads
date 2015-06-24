//Graphical//
//Example 3.2.9
//Convolution Property Proof
clear;
clc;
close;
x1 = [1,-2,1];
n1 = 0:length(x1)-1;
X1 = ztransfer_new(x1,n1)
x2 = [1,1,1,1,1,1];
n2 = 0:length(x2)-1;
X2 = ztransfer_new(x2,n2)
X = X1.*X2
