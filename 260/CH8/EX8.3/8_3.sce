//Eg-8.3
//pg-369

clear
clc

A = [2 3 1 4 5];

n = length(A);

for(i = 2:n)
    t = A(i);
    j = i;
    while((j > 1) & (A(j-1) > t))
        A(j) = A(j-1);
        j = j-1;
    end
    A(j) = t;
end

printf('Using the insertion sort method the arranged form of the given array\n')
disp(A)

