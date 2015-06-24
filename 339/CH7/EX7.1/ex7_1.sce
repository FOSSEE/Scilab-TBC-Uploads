//define problem parameters
TT=500e-12; // transit time
T0=300;     //temperature
Is0=5e-15;  // reverse saturation current at 300K
Rs=1.5;     // series resistance
nn=1.16;    //emission coefficient

// parameters needed to describe temperature behavior of 
// the band-gap energy in Si
alpha=7.02e-4; 
beta=1108;
Wg0=1.16;
pt=3;

// quiescent current
Iq=50e-3;

// frequency range 10MHz to 1GHz
f_min=10e6;  // lower limit
f_max=1e9;   //upper limit
N=300;       // number of points in the graph
f=f_min*((f_max/f_min).^((0:N)/N)); // compute frequency points on log scale

// temperatures for which analysis will be performed
T_points=[250 300 350 400];

// define physical constants
q=1.60218e-19; // electron charge
k=1.38066e-23; // Boltzmann's constant

for n=1:length(T_points) 
   T=T_points(n);
   s=sprintf('T=%.f\n',T);
   Vt=k*T/q;
   
   Wg=Wg0-alpha*T^2/(beta+T);
   s=sprintf('%s   Wg(T)=%f\n',s,Wg);
   
   Is=Is0*(T/T0)^(pt/nn)*exp(-Wg/Vt*(1-T/T0));
   s=sprintf('%s   Is(T)=%e\n',s,Is);
   
   Vq=nn*Vt*log(1+Iq/Is);
   s=sprintf('%s   Vq(T)=%f\n',s,Vq);
   
   Rd=nn*Vt/Iq;
   s=sprintf('%s   Rd(T)=%f\n',s,Rd);
   
   Cd=Is*TT/nn/Vt*exp(Vq/nn/Vt);
   s=sprintf('%s   Cd(T)=%fpF\n',s,Cd/1e-12)
   
   Zc=1./(%i*2*%pi*f*Cd);
   
   Zin=Rs+Rd*Zc./(Rd+Zc);
   
   plot(f/1e6,abs(Zin));
   set(gca(),"auto_clear","off");
end;   

title('Frequency behavior of small-signal diode model');
xlabel('Frequency {\itf}, MHz');
ylabel('Impedance |Z|, \Omega');