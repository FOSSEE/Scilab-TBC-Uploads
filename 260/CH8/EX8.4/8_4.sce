//Eg-8.4
//pg-370

clear
clc

A = [6.7 9.3 8.5 7.2 8.1 9.7 9.2 8 7.7 8.3 8.8 9.1 7.9 8.8 8.6 6.9 9.5 8.2 7.5 9];

n = length(A);
exec('insertion_sort.sci')
A = insertion_sort(A)

printf('Using the insetion sort method the arranged form of the given array\n')
disp(A)

printf('\nThe highest grade is %f\n',A(n))