//Example:15.39
// Bode plot in scilab
 clear; clc; 
  xdel(winsid()); 

s=poly(0,'s');
G=syslin('c',(25),s^2+4*s+25);
clf();
bode(G,0.01,1000);


