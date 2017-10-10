//Graphical//
//Example 3.2.3
//Time Shifting Property of Z-transform
clear;
clc;
close;
function [Ztransfer]= ztransfer_new (sequence,n)
  z = poly (0, 'z' , 'r' );  Ztransfer = sequence *(1/z )^n'
endfunction
x1 = [1,2,5,7,0,1];
n1 = 0:length(x1)-1;
X1 = ztransfer_new(x1,n1)
//x2 = [1,2,5,7,0,1];
n2 = 0-2:length(x1)-1-2;
X2 = ztransfer_new(x1,n2)
//x3 =[0,0,1,2,5,7,0,1];
n3 = 0+2:length(x1)-1+2;
X3 = ztransfer_new(x1,n3)