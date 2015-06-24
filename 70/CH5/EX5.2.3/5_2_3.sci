//page 249
clear;
close;
clc;
disp('K is rotation through 90 degree,then K^2 is rotation through 180 degree and inv(k is rotation through -90 degree)')
K=[0 -1;1 0];
disp(K,'K=')
disp(K*K,'K^2=')
disp(K*K*K,'K^3=')
disp(K^4,'K^4=')
[V,D]=spec(K);
disp('K^4 is a complete rotation through 360 degree.')
disp(D,'Eigen value matrix,D of K:');
disp(D^4,'and also D^4=')
//end