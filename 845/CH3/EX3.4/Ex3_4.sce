//Example 3.4
clc
clear

A = [1 2 1; 2 3 4; 4 3 2];
B = [8; 20; 16];
n = length (B);
Aug = [A,B];

// Forward Elimination
for j = 1:n-1
    for i = j+1:n
        Aug(i,j:n+1) = Aug(i,j:n+1) - Aug(i,j) / Aug(j,j) * Aug(j,j:n+1);
    end
end

// Backward Elimination
for j = n:-1:2
    Aug(1:j-1,:) = Aug(1:j-1,:) - Aug(1:j-1,j) / Aug(j,j) * Aug(j,:);
end

// Diagonal Normalization
for j=1:n
    Aug(j,:) = Aug(j,:) / Aug(j,j);
end
x = Aug(:,n+1);
disp(strcat(["x = ",string(x(1))]))
disp(strcat(["y = ",string(x(2))]))
disp(strcat(["z = ",string(x(3))]))
