inputl=-16;
spuresp=70;..//spurious response
A0=-22;..//input level
N=4;..//fouth order
IP4=inputl+(spuresp/(N-1));
DelS=(IP4-A0)*(N-1);..//distortion product
disp("dB",DelS,"Distortion Product");