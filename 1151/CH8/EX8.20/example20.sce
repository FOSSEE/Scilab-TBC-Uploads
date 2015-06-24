A=[-1 0 0;0 -2 0;0 0 -3]//controlability and observebility
B=[1;1;0]
C=[1 0 2]
p=cont_mat(A,B)
disp (p," controllability matrix=");
d=det(p)
if d==0 
printf ("matrix is singular, so the system is uncontrollable");
else
printf ("system is controllable ");
end
g= obsv_mat (A,C);
disp (g," Observability Matrix=");
i= det(g)
if i ==0
printf ("matrix is singular, so the system is unobservable");
else
printf (" system is observable ");
end 
