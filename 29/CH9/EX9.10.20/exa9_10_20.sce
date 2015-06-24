//caption:check_for_contrallability_of_system
//example 9.10.20
//page 410
A=[0 1 0;0 0 1;0 -2 -3]
B=[0 1;0 0;1 1]
P=cont_mat(A,B);
disp(P,"Controllability Matrix=");
S=[P(1) P(4) P(7);P(2) P(5) P(8);P(3) P(6) P(9)];//collecting columns from P to form a square matrix (3*3)
d=det(S);
if d==0
  printf("matrix is singular, so system is uncontrollable");
else
  printf("system is controllable");
end;