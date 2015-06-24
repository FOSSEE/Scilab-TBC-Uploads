//equality of matrices
A=[1 2;3 4]
B=[1 2;3 4]
x=1;
for i=1:2
  for j=1:2
    if A(i,j)~=B(i,j) then
     x=0
    end
  end
end
if x==1 then
  disp("matrices are equal")
else 
  disp("matrices are not equal")
end

  