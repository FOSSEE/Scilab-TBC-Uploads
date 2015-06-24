// Example A-5-8
// Unit step response and partial fraction expansion

clear; clc;
xdel(winsid());  //close all windows

// Please edit path
// cd "<your codes path>/";
// exec("pf_residu.sci");
// exec("plotresp.sci");

s = %s ;
N = poly( [80 72 25 3],'s','c');
D = poly( [80 96 40 8 1],'s','c');
G = syslin('c',N,D)

t = 0:0.05:5;
u = ones(1,length(t));
plotresp(u,t,G,'Unit Step Response of C(s) / D(s)');

// To find the residues of step response
D = D * s; 
[r,z,p] = pf_residu(N,D);

disp(z,'zeros = ');disp([p,r],'poles : residues  ='); 

  
