clear
clc
A=[5 4;1 2]
disp("let R represents the matrix of transformation and P represents a diagonal matrix whose values are the eigen values of A.then ")
[R P]=spec(A)
disp("R is normalised.let U represents unnormalised version of r ")
U(:,1)=R(:,1)*sqrt(17);
U(:,2)=R(:,2)*sqrt(2)
disp("two eigen vectors are the two columns of U")