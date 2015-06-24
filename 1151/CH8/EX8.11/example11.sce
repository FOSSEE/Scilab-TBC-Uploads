A =[-0.5 0;0 -2]
B =[0;1]
C=[0 1]
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


