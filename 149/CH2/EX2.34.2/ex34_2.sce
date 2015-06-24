clc
A=[4 2 1 3;6 3 4 7;2 1 0 1]
disp('rank of A is')
p=rank(A)
if p==4 then
  disp('equations have only a trivial solution:x=y=z=0')
else 
  disp('equations have infinite no. of solutions.')
  end