
clc;
close;

F = [1 2;3 4];

M = F;

[n,n] = size(M); // Since its a square matrix m and n are same

//U is a matrix of the order n whose all elements are 1
U = [];
for i = 1:n
    for j = 1:n
        U(i,j) = 1;
    end
end

F = [(4*M) ((4*M)+(2*U)) ; ((4*M)+(3*U)) ((4*M)+(U))];
 
disp(F,"F` = ",'The constructed higher order(4x4) matrix is ') 

//Note: The constructed matrix in the book is shown as F subscript (4,4) which can't be done in scilab console hence instead of that F` is used




