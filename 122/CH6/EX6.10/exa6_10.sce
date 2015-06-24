// Example 6-10
// Design of parallel compensation by root locus

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code directory>/";
// exec("plotresp.sci");

function [G,C] = getsystem(K)
  G = 20 / ( s*(s+1)*(s+4) + K*s ); //open loop system
  C = syslin('c',G /. 1); // closed loop system 
endfunction

s = %s;

// Root locus of the denominator polynomial (modified)
H = syslin('c',s , s^3 + 5*s^2 + 4*s + 20);
evans(H);
a= gca();a.children(1).visible = 'off';
sgrid([0.4],[]);  // draw zeta = 0.4 line
a.box = "on";        
a.data_bounds = [-6 -6;1 6];
xgrid(color('gray'));

r = [ -2.1589 ; -1.049 ]; i =[4.9652; 2.4065];
p  = r + %i * i;      
K = [1; 1] ./ abs(horner(H,p));   
plot(r,i,'.');
xstring(r,i,['K =' + string(K(1)),'K =' + string(K(2))] ); 

k = K ./ 20; 
disp([K k],'K : k = ');
[G1 C1] = getsystem(K(1));
[G2 C2] = getsystem(K(2));

disp(roots(C1.den),'closed loop poles of system with k = ' + string(k(1)));
disp(roots(C2.den),'closed loop poles of system with k = ' + string(k(2)));
disp(C1,'C1 =');disp(C2,'C2 =');

scf();
t = 0:0.05:10;
u = ones(1,length(t));
plotresp(u,t,C1,'');
plotresp(u,t,C2,'Step response of parallel compensated systems');
xstring(1.3,1.1,'k = ' + string(k(1)));
xstring(2,0.8,'k = ' + string(k(2)));