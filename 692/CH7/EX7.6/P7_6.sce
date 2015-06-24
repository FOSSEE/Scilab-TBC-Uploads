//EXAMPLE 7.6
//FIR Trasnfer functions with different Phase.
clc;
clear;
z  = %z;
W  = 0:(1/400):1;
z  = exp(%i*2*%pi*W);
for i=1:401
    H1z(i)= -1+ 2/z(i) - 3/(z(i)^2) + 6/(z(i)^3) -3/(z(i)^4) +2/(z(i)^5) -1/z(i)^(6); 
end
H1z_phase = phasemag(H1z);

clf();
figure(0);
plot2d(W/(2*%pi),H1z_phase,1);
xtitle('phase response','W/(2*%pi)','H2z_phase in degrees');

for i=1:401
    H2z(i)= +1 - 2/z(i) + 3/(z(i)^2) - 6/(z(i)^3) + 3/(z(i)^4) - 2/(z(i)^5) + 1/z(i)^(6); 
end
H2z_phase = phasemag(H2z);

plot2d(W/(2*%pi),H2z_phase,2);
xtitle('phase response','W/(2*%pi)','H2z_phase in degrees');




