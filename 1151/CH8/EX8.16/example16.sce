s=%s ;//convert to state space 
TFcont=syslin ('c',2/(s^3+6*s^2+11*s+6))
SScont=tf2ss (TFcont)
[Ac ,Bc ,U, ind ]=canon( SScont( 2 ) , SScont( 3 ) )
disp(Ac,"A=")
disp(Bc,"B=")
C=[1 0 0]
p=cont_mat(Ac,Bc)
disp (p," controllability matrix=");
d=det(p)
if d==0 
printf ("matrix is singular, so the system is uncontrollable");
else
printf ("system is controllable ");
end
g= obsv_mat (Ac,C);
disp (g," Observability Matrix=");
i= det(g)
if i ==0
printf ("matrix is singular, so the system is unobservable");
else
printf (" system is observable ");
end 

