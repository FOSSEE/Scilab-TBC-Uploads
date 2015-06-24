//characteristic equation from state equation
A=[0 1 0;0 0 1;-2 -1 -5]
B=[0;0;1]
C=[1 0 0]
D=[0]
[Row Col]=size(A)
Gr=C*inv(s*eye(Row,Col)-A)*B+D
c=denom(Gr)
disp(c,"characteristic equation=")