clc;
// page no 891
// prob no 24.5
wl0=1310;//in ns
So=0.05;//in ps/(nm^2*km)
l=50;//in km
wl=1550;//in ns
d=2;//in nm
// Chromatic dispersion is given as
Dc=(So/4)*[wl-(wl0^4/wl^3)];
// Dispersion is
D=Dc*d;
// Therefore total dispersion is 
dt=D*l;
disp('ps',dt,'The total dispersion is');