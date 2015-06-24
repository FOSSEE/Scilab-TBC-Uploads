A=[0 1;-1 -2];
B=[1;-1];
P=cont_mat(A,B);
disp(P,"Controllability Matrix=")
d=determ(P)
if d==0
  printf("matrix is singular, so system is uncontrollable");
else
  printf("system is controllable");
end;