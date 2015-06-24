A=[0 1 0;0 0 1;-6 -11 -6];
B=[0;0;1];
P=cont_mat(A,B);
disp(P,"Controllability Matrix=")
d=det(P)
if d==0
  printf("matrix is singular, so system is uncontrollable");
else
  printf("system is controllable");
end;