//Clear//
clc
clear
exec("6.6data.sci");
 t = 0:.01:.5;
function w=f(t,c)
 
 w =zeros(3,1);

r1 = -k1*c(2)*c(1)^.5;
r2 = -k2*c(3)*c(1)^.5;
 w(1)= r1+r2;
 w(2) = r1;
 w(3) = -r1+r2;
 
endfunction

x=ode([.021;.0105;0],t0,t,f);

l1=x(1,: )'
l2=x(2,: )'
l3=x(3,: )'

plot2d(t',[l1 l2 l3]); 

xtitle( 'Figure E6-6.1', 'Tau (hr)', 'Concentration (lb mol/ft^3' ) ;
legend(['CH';'CM';'CX']);

