A=[0 0 0 1;1 0 1 1;1 0 0 1;1 0 1 0];
disp(A,'adjacency matrix of graph G is')
A4=A^4;
A3=A^3;
A2=A^2;
B4=A+A2+A3+A4;
B4=[4 11 7 7 0 0 0 0 3 7 4 4 4 11 7 7];
for i=1:16
if(B4(i)~=0) then
B4(i)=1;
end
end
disp(B4,'Replacing non zero entries of B4 with 1 ,we get path (reachability) matrix P is:')
disp('there are zero entries in P,therefore the graph is not strongly connected')