//Eg-5.1
//pg-213

clear
clc

A=[1 -1 4;3 2 -1;2 1 -1];
d=spec(A);

//eigen equation

printf('the eigen equation is(L-%f)(L-(%f))(L-%f)=0',d(1),d(2),d(3));

//eigen values

disp(d)

//Verification

e=diag(A);
f=det(A);

if sum(e)==sum(d)&prod(d)==f then
    disp("verification done")
end

//Eigen Vectors

[v,d]=spec(A);

disp("eigen vectors corresponding to each eigenvalue are  are columns of the following matrix")
disp(v)

printf('\n\nThe eigen vectors are different because each set of equations have infinite solutions and the ones given in the text book are just one of them.\n')