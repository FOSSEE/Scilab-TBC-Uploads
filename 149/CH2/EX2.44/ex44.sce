clear
clc
A=[3 1 4;0 2 6;0 0 5]
disp("let R represents the matrix of transformation and P represents a diagonal matrix whose values are the eigen values of A.then ")
[R P]=spec(A)
disp("R is normalised.let U represents unnormalised version of r ")
U(:,1)=R(:,1)*sqrt(1);
U(:,2)=R(:,2)*sqrt(2);
U(:,3)=R(:,3)*sqrt(14)
disp("three eigen vectors are the three columns of U")