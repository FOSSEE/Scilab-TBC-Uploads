// Knapsack algorithm for Public Key Encryption

PT = [0 1 1 0 1 1; 1 1 1 0 0 0; 0 1 0 1 1 0]

disp("Plain text")
disp(PT)

K = [1 7 8 12 14 20]
disp("Knapsack:")
disp(K)

[row,col] = size(PT)
C = []
for i=1:row
    sum=0
    for j=1:col
        sum = sum+PT(i,j)*K(j:j)
    end
    C(i:i) = sum
end

disp("Cipher text:")
disp(C)
