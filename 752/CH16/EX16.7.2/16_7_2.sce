clc;
//page no 590
//prob no. 16.7.2
//For the Hertzian dipole, the radiation pattern is described by g(x)=sin^2(x) and g(y)=1
// Determination of -3dB beamwidth
// from the polar diagram shown we have
g_x=0.5;
x=asind(sqrt(g_x));
g_y=0.5;
y1=asind(sqrt(g_y));
y=y1+90;
//Therefore
z=y-x;
disp('degree',z,'The -3dB beamwidth is');