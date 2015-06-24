clc;
//prob no. 16.19.1
// Paraboloida reflector antenna is given with
D=6;//reflector diameter in m
n=0.65;//illumination effeciency
f=10^10;//frequency of operation in Hz
c=3*10^8;//velo of light in m/s
wl=c/f;
A=(%pi*D^2)/4;
A_eff=n*A;
disp('m^2',A_eff,'Effective area is');
D0=4*%pi*A_eff/wl^2;
disp(D0,'The directivity is');
BW_dB=70*wl/D;
disp('degree',BW_dB,'The -3dB beamwidth is');
BW_null=2*BW_dB;
disp('degree',BW_null,'The null beamwidth is');