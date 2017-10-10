//Eg-1.16
//pg-35

clear
clc

a=[0.5 0.5 -0.5;0.5 1 -1;-1 0.5 0.5];

printf('The given matrix is \n\n')
disp(a)

printf('The program prints the elements of the matrix as the following\n\n')

for i=1:9
    printf("a(%d) = %f\n",i,a(i))
end