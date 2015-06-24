//inverse of 2 X 2  matrix
A=[1 2;3 4]
d=det(A)
if det(A)~=0 then
    i=inv(A)
    disp(i,"A^-1=")
else
    disp("inverse of a singular matrix doesnt exist")
end