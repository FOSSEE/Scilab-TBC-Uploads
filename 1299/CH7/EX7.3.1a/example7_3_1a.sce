//Example 7.3.1 a
// Bode plot in scilab
 clear; clc; 
xdel(winsid()); 

s=poly(0,'s');
H=syslin('c',(10*(1+s)),s^2*(1+.25*s+0.0625*s^2));
clf();
bode(H,0.1,1000)
