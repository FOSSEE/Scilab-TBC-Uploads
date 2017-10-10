A=[-2 0;1 -1];
B=[0;1];

[r c]=size(A)
I=eye(r,c)
P=cont_mat(A,B);
disp(P,"Controllability Matrix=")
d=det(P)
if d==0
  printf("matrix is singular, so system is uncontrollable");
else
  printf("system is controllable");
end;



