clc
//Chapter1: Signals
//Example1,page no12
//Given:
t=-1:0.01:1,t0=-1,t1=1
// Legendre Polynomial
t=poly(0,"t")
P0=poly(1,"t","c")
P1=poly([0,1],"t","c")
P2=poly([-0.5,0,1.5],"t","c")
P3=poly([-1.5,0,2.5,0],"t","c")
disp(P3,'P3=',P2,'P2=',P1,'P1=',P0,'P0=')
//The Constant coeff (Cn)
C0=0.5*(integrate('1','t',-1,0)+integrate('-1','t',0,1))
C1=1.5*(integrate('t','t',-1,0)+integrate('-t','t',0,1))
C2=2.5*(integrate('(1.5*t^2)-0.5','t',-1,0)+integrate('-(1.5*t^2)+0.5','t',0,1))
C3=3.5*(integrate('(2.5*t^3)-(1.5*t)','t',-1,0)+integrate('-(2.5*t^3)+(1.5*t)','t',0,1))
disp('The Constant coeff (Cn) values are :')
disp(C3,'C3=',C2,'C2=',C1,'C1=',C0,'C0=')
mprintf('\nf(t)= %d*%s + %f*%s + %d*%s + %f*%s',C0,"P0",C1,"P1",C2,"P2",C3,"P3")




