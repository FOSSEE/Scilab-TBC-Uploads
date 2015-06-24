clc
A=[1 2 3;3 4 4;7 10 12]
disp('rank of A is')
p=rank(A)
if p==3 then
  disp('equations have only a trivial solution:x=y=z=0')
else 
  disp('equations have infinite no. of solutions.')
  end