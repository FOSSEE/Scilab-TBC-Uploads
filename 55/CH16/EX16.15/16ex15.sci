disp('recurrence relation of Fibonacci numbers f[n]=f[n-1]+f[n-2]')  
x=poly(0,'x');
g=x^2-x-1;
disp(g,'characterstic equation of the recurrence relation is:')
j=[];  
j=roots(g);
disp(j,'roots of the characterstic equation j1,j2')
disp('for general equation fn=Ar^n+Br^n,values of Aand B respectively are calculated as:')
disp('initial condition at n=0 and n=1 respectively are:')
f1=1;  
f2=1;  
//putting the values of f1 and f2 we get the equations to solve 
D=[ 1.6180340 -0.618034;(1.6180340)^2  (-0.618034)^2];
K=[1 1]';
c=[];
c=D\K;
A=c(1)
B=c(2)

disp('thus the solution is f[n]=0.4472136*((1.618034)^n-(- 0.4472136)^n)]')