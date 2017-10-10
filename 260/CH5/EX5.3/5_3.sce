//Eg-5.3
//pg-217

clear
clc

A=[5 3;3 5];

[v,d]=spec(A);

//Eigen equation and values
printf('the eigen equation is(l-%f)(l-%f)=0',d(1),d(2));
disp("eigen values")
disp(d)

//eigen vectors
//corresponding to d(1)
g=v(1:2,1);
h=v(1:2,2);
disp("eigen vectors")
disp(g)
disp(h)

//checking orthogonality
if g'*h==0 then
    disp("the given eigen vectors are orthogonal")
end

//checking orthonormality

if round(g'*g)==1& round(h'*h)==1 then
    disp("the given eigen vectors are orthonormal")
end