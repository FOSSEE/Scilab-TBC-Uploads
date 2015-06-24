// example:-10.1;page no.-547.
// problem to calculate and plot the phase and attenuation constants for RHCP & LHCP plane wave.
M=1800;// M=4*pi*Ms;
deltaH=75;eo=8.854*10^-12;muo=4*%pi*10^-7;c=3*10^8;
Ho=3570;er=14;tandelta=0.001;
fo=(2.8*10^9)/Ho; // IN GHZ.
wo=2*%pi*fo;
fm=(2.8*10^9)/M;  // IN GHZ.
wm=2*%pi*fm;
mue=muo*(1+(wo*wm)/(wo^2-wm^2));
e=eo*er*(1-%i*tandelta);
f=0:1000000:20*10^9;
w=2*%pi.*f;
k=muo*((w.*wm)/(wo^2-w^2));
gama=%i*w*sqrt(e.*(mue-k));
alpha=abs(real(gama));
bta=abs(imag(gama));
plot2d(f,gama,style=3,rect=[0,0,20*10^9,24])
plot2d(f,bta,style=2,rect=[0,0,20*10^9,24])