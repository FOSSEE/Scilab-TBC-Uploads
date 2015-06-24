//Example 3.2
clc
clear

A = [1 1 1; 3 3 4; 2 1 3];  //Coefficient Matrix
B = [7; 24; 16];  //Constant Matrix

n = length(B);
Aug = [A,B];

// Forward Elimination
for j = 1:n-1
    // Partial Pivoting
    [dummy,t] = max(abs(Aug(j:n,j)));
    lrow = t(1)+j-1;
    Aug([j,lrow],:) = Aug([lrow,j],:);
    
    for i = j+1:n
        Aug(i,j:n+1) = Aug(i,j:n+1) - Aug(i,j) / Aug(j,j) * Aug(j,j:n+1);
    end
end

// Backward Substitution
x = zeros(n,1);
x(n) = Aug(n,n+1) / Aug(n,n);
for i = n-1:-1:1
    x(i) = (Aug(i,n+1)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
end
disp(strcat(["x = ",string(x(1))]))
disp(strcat(["y = ",string(x(2))]))
disp(strcat(["z = ",string(x(3))]))

