clear
clc
A=[1 1 3;1 5 1;3 1 1]
disp("R is matrix of transformation and D is a diagonal matrix ")
[R D]=spec(A)
disp("R is normalised,let P denotes unnormalised version of R.Then ")
P(:,1)=R(:,1)*sqrt(2);
P(:,2)=R(:,2)*sqrt(3);
P(:,3)=R(:,3)*sqrt(6)
disp("A^4=")
A^4