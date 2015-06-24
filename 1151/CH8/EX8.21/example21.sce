//check the obersebability of the system
A=[-1 0;0 -2]
C=[1 1]
g= obsv_mat (A,C);
disp (g," Observability Matrix=");
i= det(g)
if i ==0
printf ("matrix is singular, so the system is unobservable");
else
printf (" system is observable ");
end 
