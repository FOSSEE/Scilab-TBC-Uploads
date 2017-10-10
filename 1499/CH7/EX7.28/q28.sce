A=[-2 4;2 -1];
B=[0;1];

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


p=s*I-A // s*I-A 
q=s^2+3*s-6;
r=roots(q)

 //roots lie in rhp
printf("system is unstable") 
