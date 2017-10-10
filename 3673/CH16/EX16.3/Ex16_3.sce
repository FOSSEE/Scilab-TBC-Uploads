//Example 16_1 page no:739
clc;
//given
I1=1;//here I1 is assumed to 1 hence it will cancel out in simplifications
I2=1;//here I1 is assumed to 1 hence it will cancel out in simplifications
V1=6*I1;
V2=5*I1;
function [x] = frac(n, d)
 x = (n*%s)/(d*%s);
endfunction;
x=frac(V1,V2);
disp(x,"the parameter A is");
x=frac(I1,V2);
disp(x,"the parameter C is");
V1=-17;
I2=5;
x=frac(-V1,I2);
disp(x,"the parameter B is");
V1=-7;
I2=5;
x=frac(-V1,I2);
disp(x,"the parameter C is");
