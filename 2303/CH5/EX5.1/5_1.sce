//Example 5.1


clc;
clear;
close;
x=[0 1 2 3];
//compute DFT by definition
w=-%i;
X=[0 0 0 0]
for i=1:4
    for j=1:4
        X(i)=X(i)+x(j)*w^((i-1)*(j-1));
    end
end
//Displaying DFT 
disp(X,"X[k]=");
