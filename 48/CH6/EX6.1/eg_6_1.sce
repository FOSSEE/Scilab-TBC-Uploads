clc;
clear;
disp("Given function f(w,x,y,z) can be written as follows");
disp("f(w,x,y,z)=w^x^z^+wx^z+w^yz+wyz^");
disp("f(w,x,y,z)=((w^z^+wz)x^+(w^z+wz^)y)");
disp("let Q=w^z^+wz");
disp("then we can rewrite f as f(w,x,y,z)=Qx^+Q^y");
disp("f(w,x,y,z)=Qx^+Q^y=F[Q(w,z),x,y]");
