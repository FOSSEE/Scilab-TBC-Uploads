A=[0 1 0;0 0 1;0 -2 -3];
B=[0;0;1];
C=[3 4 1];
P=obsv_mat(A,C);
disp(P,"Observability Matrix=");
d=det(P)
if d==0
  printf("matrix is singular, so system is unobservable");
else
  printf("system is observable");
end;