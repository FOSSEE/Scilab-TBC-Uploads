//caption:check_for_observability_of_system
//example 9.9.1_b
//page 383
A=[-2 1;0 1]
B=[1;1]
C=[1 1]
P=obsv_mat(A,C);
disp(P,"Observability Matrix=");
d=determ(P)
if d==0
  printf("matrix is singular, so system is unobservable");
else
  printf("system is observable");
end;