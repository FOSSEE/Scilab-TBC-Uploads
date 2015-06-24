stacksize('max');
C=2*10^-12;
L=5*10^-9;
R=20;
Z0=50;
//f=[10^7:10^8:10^11];
//define frequency range
f_min=10e6;  //lower frequency limit
f_max=100e9; // upper frequency limit
N=100;      // number of points in the graph
f=f_min*((f_max/f_min).^((0:N)/N)); // compute frequency points on log scale
w=2*%pi.*f;  
A=(w.*w*L*C-1)/(w*C);
S21=2*Z0./(2*Z0+R+%i*A);
f0=1./(2*%pi*sqrt(L*C));
disp("Hertz",f0,"Resonance frequency");