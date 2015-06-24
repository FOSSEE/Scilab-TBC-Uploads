//Example 3.3
clc
clear

A = [0 4 2 8; 4 10 5 4; 4 5 6.5 2; 9 4 4 0];  //Coefficient Matrix
B = [24; 32; 26; 21];  //Constant Matrix

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

disp(strcat(["x1 = ",string(x(1))]))
disp(strcat(["x2 = ",string(x(2))]))
disp(strcat(["x3 = ",string(x(3))]))
disp(strcat(["x4 = ",string(x(4))]))
