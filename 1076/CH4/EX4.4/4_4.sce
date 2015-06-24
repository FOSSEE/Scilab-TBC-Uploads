clear;
clc;
v3=20;
v2=15;
//putting v1=15/(1+k)
s=poly([-1 5 3],"x","coeff");
K=roots(s);
k=K(2)
v1=15/(1+k);
//disp(v1)
x=v1(1);
//disp(x);
vnew=x+v3+v2;
xl=sqrt(3)*vnew;
n=vnew/(3*v3);
mprintf("capacitance ratio= %.2f \nthe line to neutral voltage= %.1fkV \n string efficiency=%.1fpercent",k,xl,n*100);
