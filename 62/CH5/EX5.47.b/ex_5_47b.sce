clear;
clc;
s=poly(0,'s'); 
H=syslin('c',[100/(100+s)]) ;
fmin=0.1; 
fmax=100; 
scf(1);clf;
bode(H,fmin,fmax); 
show_margins(H) ;