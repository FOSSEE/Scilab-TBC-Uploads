A=[0 1 0;0 0 1;0 0 0];
B=[0;0;1];

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

C=[1 0 0];
P=obsv_mat(A,C);
disp(P,"Observability Matrix=");
d=det(P)
if d==0
  printf("matrix is singular, so system is unobservable");
else
  printf("system is observable");
end;


