//conformablility for multiplication of matrices
A=[1 2 3;4 5 6]
B=[1 2 3]
C=size(A)
D=size(B)
if C(1,2)==D(1,1) then
    disp("matrices  are conformable for multiplication AB")
else 
    disp("matrices  are not conformable for multiplication AB")
end
if D(1,2)==C(1,1) then
    disp("matrices  are conformable for multiplication BA")
else 
    disp("matrices  are not conformable for multiplication BA")
end
