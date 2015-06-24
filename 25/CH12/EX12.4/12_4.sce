// example:-12.4,page no.-683.
// program to find the maximum range of radar.
G=10^2.8;Pt=2000;sigma=12;
Pmin=10^-12;lamda=0.03;
Rmax=((Pt*(G^2)*sigma*(lamda^2))/(((4*%pi)^3)*Pmin))^(0.25);
disp(Rmax,'the maximum range of the radar in meter = ')