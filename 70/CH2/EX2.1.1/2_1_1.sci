//page 70
clear;
close;
clc;
disp('Consider all vectors in R^2 whose components are positive or zero')
disp('The subset is first Quadrant of x-y plane,the co-ordinates satisfy x>=0 and y>=0.It is not a subspace.')
v=[1,1];
disp(v,'If the Vector=');
disp('Taking a scalar,c=-1')
c=-1; //scalar
disp(c*v,'c*v=') 
disp('It lies in third Quadrant instead of first,Hence violating the rule(ii).')
//end