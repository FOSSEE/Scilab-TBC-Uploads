disp('The recurrence relation t[n]=4(t[n-1]-t[n-2])')
x=poly(0,'x');
disp(g=x^2-4*x+4,'characterstic polynomial equation for the above recurrence relation') 
j=[];  
j=roots(g);
disp(j,'roots of the characterstic equation j1,j2')
disp('the general solution is t[n]=n*2^n) 
disp('initial condition at n=0 and n=1 respectively are:')
t0=1;
t1=1;
//putting the values of t0 and t1 we get the equations to solve
D=[1 0;2 2]
K=[1 1]'
c=linsolve(D,K)
D=[1 0;2 2]
K=[1 1]'
c=[];
c=D\K;
c1=c(1)
c2=c(2)
disp('thus the solution is t{n}=2*n-n*2^(n-1)')