clc;
//page no 598
//prob no. 16.9
//A parabolic antenna with diameter=3m & efficiency=60% operate at 4GHz
D=3;n=0.6;f=4*10^9;c=3*10^8;//Spped of light
//Determination of gain & beamwidth
wav=c/f;//Determination of free space wavelength
theta=(70*wav)/D;//Calculaing beamwidth
disp('degree',theta,'The beamwidth is');
G=(n*(%pi^2)*(D^2))/wav^2;//Calculating gain
//Converting gain in dBi
G_dBi=10*log10(G);
disp('dBi',G_dBi,'The gain is');