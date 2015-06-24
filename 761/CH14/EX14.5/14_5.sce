clc;
//page no 472
//prob no. 14.5
//Standard coaxial cable RG-8/U with 45 degree phase shift at 200MHz
p=45;f=200*10^6;c=3*10^8;//Speed of light in m/s
vf=0.66;//velo. factor for this line
vp=vf*c;//Determination of propagation velo.
wav=vp/f;//Determination of wavelength of signal
//Determination of reqd length for 45 degree phase shift
L=wav*(p/360);
disp('m',L,'The length reqd for phase shift is');