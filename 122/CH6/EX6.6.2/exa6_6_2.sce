// Example 6-6-2
// Step and ramp response of lead compensated systems

clear; clc;
xdel(winsid());  //close all windows

function Gc = leadcomp(Kc,z,p);
  Gc = Kc* ((s + z)/(s + p));
endfunction

function plotall(u,t,text)
  y   = csim(u,t,H );
  yc1 = csim(u,t,H1);
  yc2 = csim(u,t,H2);

  plot(t,y,t,yc1,t,yc2);
  xgrid(color('gray'));
  xtitle(text + ' Response of compensated and uncompensated systems','t sec','Output');
  legend('Uncompensated System','Compensated System Method 1','Compensated System Method 2');
endfunction 
    
s = %s;
G = 10 / ( s*(s+1) ); //open loop system
Gc1 = leadcomp(1.2292,1.9373,4.6458);
Gc2 = leadcomp(0.9,1,3);

H =  syslin('c',G /. 1);
H1 = syslin('c', ( G * Gc1) /. 1);
H2 = syslin('c', ( G * Gc2) /. 1);
 
 t = 0:0.05:5;
 u = ones(1,length(t));
 plotall(u,t,'Step');scf();
 t = 0:0.05:9; 
 plotall(t,t,'Ramp');
  plot(t,t,'k');
