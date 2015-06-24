syms t
s=%s;
A=[1 0;1 1];
[r c]=size(A)
p=s*eye(r,c)-A 
// resolvent matrix
q=inv(p)
disp(q,"phi(s)=")
for i=1:r
for j=1:c
q(i,j)=ilaplace(q(i,j),s,t)    
end
end
disp(q,"phi(t)=") // state transition matrix