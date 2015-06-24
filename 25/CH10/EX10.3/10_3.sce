//example:-10.3.page no.-560.
// program to design a resonance isolator using the H-plane ferrite slab geometry in x-band.
f=10*10^9;delta_sbys=0.01;forpims=1700;deltaH=200;
revatt=30;ko=(2*%pi*f)/(3*10^8);
Ho=f/(2.8*10^9);
// for x-band waveguide, a=2.286 cm.
a=2.286;
kc=(%pi*100)/a;
betao=sqrt(ko^2-kc^2);
x=(1/%pi)*atan(kc/betao); // x=c/a.
L=revatt/2;
disp(L,'the slab length required for 30db total reverse attenuation in cm = ')
disp(kc,'cut-off wave number in m-1 = ')
disp(betao,'propagation constant = ')