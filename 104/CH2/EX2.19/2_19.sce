//inverse of a 3 X 3 matrix
A=[1 2 3;4 5 6;7 8 9]
d=det(A)
if det(A)~=0 then
    i=inv(A)
    disp(i,"A^-1=")
else
    disp("inverse of a singular matrix doesnt exist")
end