// Illustration 7-1
// Bode plot of second order systems with varying damping (zeta)

// With refernce to section 7.2  (Figure 7.9)

clear; clc;
xdel(winsid());  //close all windows

s = %s;
// Taking wn = 1 in all cases
zeta = [0.1 0.2 0.3 0.5 0.7 1.0];


N = ones(6,1);
D = zeros(6,1);
for i = 1:6 
  D(i) = s^2 + 2*zeta(i)*s + 1;  
end
H = syslin('c',N,D);

omega = logspace(-1,1,100);
f = omega / 2 / %pi;
repf = repfreq(H,f);    // Frequency response
              
bode(omega,repf, ['zeta = 0.1',' 0.2',' 0.3',' 0.5',' 0.7',' 1.0']);
xtitle('Bode plot of second order systems','rad/s');
a = gcf();set(a.children(1).x_label,'text','rad/s');