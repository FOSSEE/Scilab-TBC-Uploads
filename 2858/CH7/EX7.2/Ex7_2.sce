//example 7.2
clc; funcprot(0);
c=14.36;
Gamma=17.4;
H=6;
phi=26*%pi/180;
Ka=(tan(%pi/4-phi/2))^2;
sigma0=Gamma*H*Ka-2*c*sqrt(Ka);
Pa=1/2*Gamma*H^2*Ka-2*c*H*sqrt(Ka);
disp(Pa,"active force before which tensile crack appeared in kN/m");
zbar=(244.32-323.1)/14.46;
disp(zbar,"the line of action on which net force is acting in m");
zc=2*c/Gamma/sqrt(Ka);
disp(zc,"distance where tensile crack appeared in m");
Pa=1/2*(H-zc)*(Gamma*H*Ka-2*c*sqrt(Ka));
disp(Pa,"Active force in tensile crack in kN/m");
zbar=(H-zc)/3;
disp(zbar,"the line of action on which net force is acting in m");

