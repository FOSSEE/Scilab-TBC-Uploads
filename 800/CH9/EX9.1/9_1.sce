//clear//
clc
clear
exec("9.1data.sci");
 t = 0:10:1500;
function w=f(t,x)
 
 w =zeros(1,1);

t1=535+90.45*x
k= .000273*exp(16306*((1/535)-(1/t1)));
w(1)=k*(1-x) 
endfunction

X=ode([0],t0,t,f);
T=535+90.45*X;
scf(1)
plot2d(t,T); 

xtitle( 'Figure E9-1.1', 't (Seconds)', 'T (oR)' ) ;

scf(2)
plot2d(t,X); 

xtitle( 'Figure E9-1.1', 't (Seconds)', 'X' ) ;



