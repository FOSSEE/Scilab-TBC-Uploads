//Example 3.5
clc
clear

A = [5 -2 1; 7 1 -5; 3 7 4];
B = [4; 8; 10];

n = length (B);
L = zeros(n,n);         // L = Lower Triangular Matrix Initiation
U = eye(n,n);           // U = Upper Triangular Matrix Initiation

// LU Decomposition
for i = 1:n
    sum1 = zeros(n-i+1,1);
    for k = 1:i-1
        sum1 = sum1 + L(i:n,k) * U(k,i);
    end
    L(i:n,i) = A(i:n,i) - sum1;

    sum2 = zeros(1,n-i);
    for k = 1:i-1
        sum2 = sum2 + L(i,k) * U(k,i+1:n);
    end
    U(i,i+1:n) = (A(i,i+1:n) - sum2) / L(i,i);
end

// Forward Substitution
D = ones(n,1);
for i = 1:n
    sum3 = 0;
    for k = 1:i-1
        sum3  = sum3 + L(i,k) * D(k);
    end
    D(i) = (B(i) - sum3) / L(i,i);
end

// Back Substitution
x = ones(n,1);
for i = n:-1:1
    sum4 = 0;
    for k = i+1:n
        sum4 = sum4 + U(i,k) * x(k);
    end
    x(i) = D(i) - sum4;
end

disp(strcat(["x1 = ",string(x(1))]))
disp(strcat(["x2 = ",string(x(2))]))
disp(strcat(["x3 = ",string(x(3))]))

