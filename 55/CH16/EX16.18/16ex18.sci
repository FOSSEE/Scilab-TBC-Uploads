disp('The recurrence relation a[n]=2*a[n-1]-3a[n-2]')
x=poly(0,'x');
disp(g=x^2-2*x-3,'characterstic polynomial equation for the above recurrence relation') 
j=[];  
j=roots(g);
disp(j,'roots of the characterstic equation j1,j2')
disp('the general solution is a[n]=c1*3^n+c2*(-1)^n') 
disp('initial condition at n=0 and n=1 respectively are:')
//putting the values of t0 and t1 we get the equations to solve
a0=1;
a1=2;
D=[1 1;3 -1]
K=[1 2]'
c=[];
c=D\K;
c1=c(1)
c2=c(2)
disp('thus the solution is a[n]=0.75*(3^n)+0.25*(1^n)')