//find the function like eig in matlab
//Eg-13.10
//pg-548

clear
clc

//From the given differential equations we have,
//    F0 = y0 - y1 + 2*y2^2;
//    F1 = 3*y0 + y1^2 - y2;
//    F2 = 2*y0 + 0.5*y1^2 - 0.5*y2^2;

//Therefore, the jacobian matrix is 

J = [1 -1 4;3 2 -1;2 1 -1]
Ji = inv(J)

printf('J = ')

disp(J)

printf('The largest eigenvalue can be computed by the power method(see chapter 5). It is found \nto be 3. To find the minimum eigen value, we determine the inverse of this matrix\n')
printf('\nInverse of J, Ji = \n')

disp(Ji)

//ro = Lmax/Lmin 

ro = 3/1;

printf('\nThe power method gives the largest eigenvalue of this matrix to be 1. Therefore, the \nminumum eigenvalue of J is 1/1 = 1. The stiffness ratio, therefore is,\n\n    ro = %f\n',ro)

