//Example:(i) 7.3.1 b
// Bode plot in scilab
 clear; clc; 
  xdel(winsid()); 

s=poly(0,'s');
G=syslin('c',(8*(1+0.5*s)),s*(1+2*s)*(1+0.05*s+0.0625*s^2));
clf();
bode(G,0.01,1000);


