clc;
//page no 652
//prob no. 17.10
//A pyramidal horn has aperture=58mm in E-plane & 78mm in H-plane & operates at 10GHz
f=10*10^9;c=3*10^8;dH=78*10^-3;dE=58*10^-3;
//a)Determination of gain in dB
wl=c/f;//calculation of wavelength
G=(7.5*dE*dH)/(wl^2);
G_dBi=10*log10(G);//Converting to dBi
disp('dBi',G_dBi,'a)The gain is');
//b)Determination of beamwidth in H-palne
theta_H=(70*wl)/dH;
disp('degree',theta_H,'b)The beamwidth in H-plane is');
//c)Determination of beamwidth in E-plane
theta_E=(56*wl)/dE;
disp('degree',theta_E,'c)The beamwidth in H-plane is');