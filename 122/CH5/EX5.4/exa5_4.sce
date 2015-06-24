// Example 5-4 
// 2d and 3d plots of standard second order systems
// with wn = 1 and different damping ratios

clear; clc;
xdel(winsid()); //close all windows

s = %s;
t = 0:0.1:10;
zeta = 0:0.2:1;

for n = 1:6
    z(n,:) = csim('step',t,syslin('c', 1,s^2 + 2*zeta(n)*s + 1));  
end

plot(t,z);  // 2d plot of step responses
xtitle('Plot of step response curves with wn = 1 and different zeta','t sec','Response');
xgrid(color('gray'));
legend('zeta = 0','0.2','0.4','0.6','0.8','1.0');

scf();   // new window

[x,y] = meshgrid(0:0.1:10 , 0:0.2:1);  //needed by the mesh command
mesh(x,y,z);
xtitle(' 3d Plot of step Response','t sec','zeta','Response');

    
  



