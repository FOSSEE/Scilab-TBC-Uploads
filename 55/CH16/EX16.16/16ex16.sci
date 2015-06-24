disp('The recurrence relation t[n]=3t[n-1]+4t[n-2]')
x=poly(0,'x');
g=x^2-3*x-4;
disp(g,'characterstic polynomial equation for the above recurrence relation') 
j=[];  
j=roots(g); 
disp(j,'roots of the characterstic equation j1,j2')
disp('general solution t[n]=c1*(-1)^n+c2*4^n)') 
disp('initial condition at n=0 and n=1 respectively are:')
t0=0;
t1=5;
//putting the values of t0 and t1 we get the equations to solve
D=[1 1;-1 4]
K=[0 5]'
c=[];
c=D\K;
c1=c(1)
c2=c(2)
disp('thus the solution is t{n}=4^n-(-1)^n')