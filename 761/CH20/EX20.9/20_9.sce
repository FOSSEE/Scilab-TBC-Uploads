clc;
// page no 769
// prob no 20.9
f_down = 4*10^9;// downlink freq
D=3;//diameter
n=0.55;//efficiency
c=3*10^8;//velo of light
// The gain of a parabolic antenna is given as G=(n*%pi^2*D^2)/wl^2. Therefore wavelength is given as
wl=c/f_down
G=(n*%pi^2*D^2)/wl^2;
G_dB = 10*log10(G);
disp('dB',G_dB,'The gain of TVRO is ');
// The beamwidth is given as
bw= (70*wl)/D;
disp('degree',bw,'The beamwidth is');