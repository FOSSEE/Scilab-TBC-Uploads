clc;
clear;
disp("Given minimal contact network is T(w,x,y,z)=wxy+wxz+w^x^y^z^+w^x^yz");
disp("T(w,x,y,z)=wx(y+z)+w^x^(y^z^+yz)");
disp("Draw the equivalent series parallel circuit of T");
disp("Interchange the locations of contacts of w^ and x^ and connect the nodes");
disp("By connecting in the above manner there is no logical effect since the connection path is not at all used");
disp("now the lower branch of yz+y^z^ can be written as (y+z^)(y^+z) so transfer contacts can be used");
disp("This parallel connection enables us to combine two parallel z contacts and thus the minimum spring connection is obtained");