A=[1 -1;1 -1];
B=[0;1];



C=[1 0];
P=obsv_mat(A,C);
disp(P,"Observability Matrix=");
d=det(P)
if d==0
  printf("matrix is singular, so system is unobservable");
else
  printf("system is observable");
end;


