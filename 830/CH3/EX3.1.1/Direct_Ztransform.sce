//Graphical//
//Example 3.1.1
//Z Transform of Finite Duration SIgnals
clear;
clc;
close;
function [Ztransfer]= ztransfer_new (sequence,n)
  z = poly (0, 'z' , 'r' );  Ztransfer = sequence *(1/z )^n'
endfunction
x1 = [1,2,5,7,0,1];
n1 = 0:length(x1)-1;
X1 = ztransfer_new(x1,n1)
x2 = [1,2,5,7,0,1];
n2 = -2:3;
X2 = ztransfer_new(x2,n2)
x3 =[0,0,1,2,5,7,0,1];
n3 = 0:length(x3)-1;
X3 = ztransfer_new(x3,n3)
x4 = [2,4,5,7,0,1];
n4 = -2:3;
X4 = ztransfer_new(x4,n4)
x5 = [1,0,0];  //S(n) Unit Impulse sequence
n5 = 0:length(x5)-1;
X5 = ztransfer_new(x5,n5)
x6 = [0,0,0,1];  //S(n-3) unit impulse sequence shifted
n6 = 0:length(x6)-1;
X6 = ztransfer_new(x6,n6)
x7 = [1,0,0,0];  //S(n+3) Unit impulse sequence shifted
n7 =  -3:0;
X7 = ztransfer_new(x7,n7)