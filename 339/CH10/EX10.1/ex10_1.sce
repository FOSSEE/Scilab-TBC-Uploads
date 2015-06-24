fo=200*10^6;
Vce=3;
Ic=3*10^-3;

Cbc=0.1*10^-15;
rBE=2*10^3;
rCE=10*10^3;
Cbe=100*10^-15;
L3=50*10^-9;
L=50*10^-9;
gm=0.11666;

disp("DC values of Hparameters are");
h11=rBE;
h12=0;
h21=rBE*gm;
h22=1/rCE;

disp("Mho",h22,"h22",h21,"h21",h12,"h12","Ohms",h11,"h11");
k=h21/(h11*h22-h21*h12);
A=(1+k)/L;
B=A^2;
C=16*k*(%pi)^2*fo^2*(h22/h11);
D=8*k*(%pi)^2*fo^2;
C2=(A+sqrt(B+C))/D;
C1=k*C2;

disp("H parameters at resonance frequency");
w=2*%pi*fo;
E=1+%i*w*(Cbe+Cbc)*rBE;

hie=rBE/E;
hre=(%i*w*Cbc*rBE)/E;
hfe=(rBE*(gm-%i*w*Cbc))/E;
hoe=h22+(%i*w*Cbc*(1+gm*rBE+%i*w*Cbe*rBE))/E;
disp("Mho",hoe,"hoe",hfe,"hfe",hre,"hre","Ohms",hie,"hie");