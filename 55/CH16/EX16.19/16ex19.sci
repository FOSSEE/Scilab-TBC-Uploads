disp('The recurrence relation a[n]=11*a[n-1]-39*a[n-2]+45*a[n-3]')
x=poly(0,'x');
disp(g=x^3-11*x^2+39*x-45,'characterstic polynomial equation for the above recurrence relation') 
j=[]; 
j=roots(g);
disp(j,'roots of the characterstic equation j1,j2')
disp('hence the general solution is:a[n]=c1*(3^n)+c2*n*(3^n)+c3*(5^n)')
disp('initial condition at n=0 and n=1 respectively are:')
//putting the values of t0 and t1 we get the equations to solve
a0=5;
a1=11;
a2=25;
D=[1 0 1;3 3 5;9 18 25];
K=[5 11 25]'
c=[];
c=D\K;
c1=c(1)
c2=c(2)
c3=c(3)
disp('thus the solution is a[n]=(4-2*n)*(3^n)+5^n')