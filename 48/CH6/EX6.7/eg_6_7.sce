clc;
clear;
disp("f(x1,x2,x3)=x1^x2^x3^+x1x2^x3+x1^x2x3");
disp("you can check that above equatioin is not symmetric in x1,x2,x3");
disp("But it is symmetric in x1,x2,x3^");
disp("let us verify it with interchanging x1 and x3^");
disp("f(x3^,x2,x1)=x3x2^x1+x3^x2^x1^+x3x2x1^");
disp("you can identify that f(x1,x2,x3)=f(x3^,x2,x1)");