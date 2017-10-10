clc;
clear;
hp=0.15;//from diagram
F=9000;
V=80;//Working voltage
Lmt=1.25;//Mean length of the turn
Vp=4;//voltage per pole
disp('For a copper winding at 75 deg cel:')
a=0.021*(10^(-6))*Lmt*(F/Vp);
disp(a,'The conductor area is:')
Vp=4;//voltage per pole
S=Lmt*hp;
C=0.019;//Assumed value
disp('For a temp rise of 65 deg cel:')
theta_m=65;//temperature rise
p=(theta_m*S)/C;
disp(p,'The power dissipated is:')
I=p/Vp;
disp(I,'The field current is:')
N=F/I;
disp(N,'The number of turns per pole is:')
J=I/N;
disp(J,'The current density is:')
