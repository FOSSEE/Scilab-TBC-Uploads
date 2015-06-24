clc;
//prob no. 16.9.1
//Half dipole antenna is given with I=Io*cos(Bl) where l=0
//The physical length of the antenna is wl/2
//consider wl=unity and current Io=unity
Io=1;
wl=1;
phy_length=wl/2;
I_av=2*Io/%pi;
//Thus area is given as 
Area=I_av*phy_length;
// From the above eq l_effective is given as
disp('l_eff= wl/pi');