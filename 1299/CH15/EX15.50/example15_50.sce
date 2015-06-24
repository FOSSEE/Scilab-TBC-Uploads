//Example:15.50
// Bode plot in scilab
 clear; clc; 
  xdel(winsid()); 

s=poly(0,'s');
G=syslin('c',(16*(s+2)),(s*(s+0.5)*(s^2+3.2*s+64)));
clf();
bode(G,0.01,1000);
