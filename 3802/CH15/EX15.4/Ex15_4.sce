//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex15_4.sce.

clc;
clear;
//There is a mistake in the question , given height is 5 instead of 4
h=4;
x=[2:2:14];
for i=1:length(x)

Ed(i)=(64/(4^2+x(i)^2)^(3/2))+1;
Eb(i)=(256/(4^2+(x(i)/2)^2)^(3/2));

end
xlabel("x-axis")
ylabel("y-axis")
title("Curves of L.H.S and R.H.S for different values of x")
plot(x,[Ed Eb])

legend('LHS','RHS')
