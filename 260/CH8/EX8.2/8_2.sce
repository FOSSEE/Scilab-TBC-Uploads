//Eg-8.2
//pg-367


clear
clc

A = [1447.5 1434.2 1361 1365.4 1412.7 1347.9 1382.8 1406.4 1365.1];
n = length(A);
printf('The given array is \n')
disp(A)

for(i=1:n)
    
    for(i=1:n-1)
        if(A(i) > A(i+1))
        t = A(i);
        A(i) = A(i+1);
        A(i+1) = t;
        end
    end
end


printf('\n\nThe array after arranging in ascending order using bubble-sort algorithm is\n')
disp(A)

printf('Therefore the minimum and maximum values are %f and %f respectively\n',A(1),A(n))