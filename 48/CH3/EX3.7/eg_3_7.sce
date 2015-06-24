clear;
clc;
disp("T(x,y,z)=x^y+z^+xyz");
disp("**To determine the canonical sum of products we have to check for a product which is not a min term and then multiply with the missing variable such that the expression value doesnt change**");
disp("T(x,y,z)=x^y(z+z^)+(x+x^)(y+y^)z^+xyz");
disp("T(x,y,z)=x^yz+x^yz^+xyz^+xy^z^+x^yz^+x^y^z^+xyz");
disp("T(x,y,z)=x^yz+x^yz^+xyz^+xy^z^+x^y^z^+xyz");