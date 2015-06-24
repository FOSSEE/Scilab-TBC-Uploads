//caption:check_for_contrallability_of_system
//example 11_37
//page 512
A=[1 1;0 -1]
B=[1;0]
P=cont_mat(A,B);
disp(P,"Controllability Matrix=");
d=determ(P)
if d==0
  printf("matrix is singular, so system is uncontrollable");
else
  printf("system is controllable");
end;