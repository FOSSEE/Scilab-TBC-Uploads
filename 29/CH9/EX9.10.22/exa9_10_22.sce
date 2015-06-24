//caption:check_for_contrallability_and_observability_of_system
//example 9.10.21
//page 411
s=%s;
g=(10*(s+3))/((s+4)*(s+2)^2);
CL=syslin('c',g);
disp(CL,"Y(s)/U(s)=");
SS=tf2ss(CL)
[Ac,Bc,U,ind]=canon(SS(2),SS(3))
A=SS(2)
B=SS(3)
C=SS(4)
P=cont_mat(A,B);
P=round(P)
disp(P,"Controllability Matrix=");
d=det(P)
if d==0
  printf("matrix is singular, so system is uncontrollable");
else
  printf("system is controllable");
end;
P1=obsv_mat(A,C);
P1=round(P1);
disp(P1,"Observability Matrix=");
d1=det(P1)
if d1==0
  printf("matrix is singular, so system is unobservable");
else
  printf("system is observable");
end