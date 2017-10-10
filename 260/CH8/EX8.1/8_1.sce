//Eg-8.1
//pg-365


clear
clc

A = [-2 1 4 3 1.5];
//printf('The given array is \n')

exec('swap.sci')

//disp(A)

n = length(A);

printf('The given array is \n')

disp(A)

for(i=1:n)
    
    for(i=1:n-1)
        if(A(i) > A(i+1))
        [A(i),A(i+1)] = swap(A(i),A(i+1))
        end
    end
end

printf('\n\nThe array after arranging in ascending order using bubble-sort algorithm is\n')
disp(A)