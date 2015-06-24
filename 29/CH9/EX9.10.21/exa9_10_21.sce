//caption:check_for_contrallability_and_observability_of_system
//example 9.10.21
//page 411
A=[0 1 0;0 0 1;-6 -11 -6]
B=[1 0 1]'
C=[10 5 1]
P=cont_mat(A,B);
disp(P,"Controllability Matrix=");
d=det(P)
if d==0
  printf("matrix is singular, so system is uncontrollable");
else
  printf("system is controllable");
end;
P1=obsv_mat(A,C);
disp(P1,"Observability Matrix=");
d1=det(P1)
if d1==0
  printf("matrix is singular, so system is unobservable");
else
  printf("system is observable");
end;