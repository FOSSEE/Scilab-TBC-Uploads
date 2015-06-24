//multiplication of matrices
A=[3 -1;0 1;2 0]
B=[1 0 -1;2 1 0]
C=size(A)
D=size(B)
if C(1,2)==D(1,1) then
    AB=A*B
    disp(AB,"AB=")
else 
    disp("matrices  are not conformable for multiplication AB")
end
if D(1,2)==C(1,1) then
    BA=B*A
    disp(BA,"BA=")
else 
    disp("matrices  are not conformable for multiplication BA")
end
