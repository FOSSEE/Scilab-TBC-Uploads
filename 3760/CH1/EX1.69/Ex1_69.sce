clc;
B=1.2; // maximum flux density in core
H=600; // magnetic field intensity in A/m
d=7.8; // gram density in g/cm^3
cl=2; // core loss per kg
e=1200; // supply voltage
f=50; // frequency of supply voltage
t=10; // thickness of core in cm
w=40;
L=30; // dimensions of core
s=0.9; // stacking factor
ga=t^2*10^-4; // gross core area in m^2
nga=ga*s; // net gross core area in m^2
q=nga*B; // maximum flux in core
N=(e)/(sqrt(2)*%pi*f*q);
printf('Number of turns in primary is %f\n',N);
ml=((w+t)+(L+t))*2; // mean flux path in cm
mmf=H*(ml/100); // mmf of the core
mi=mmf/N; // maximum value of magnetizing current
irm=mi/sqrt(2); // rms value of magnetizing current
cv=(ml/100)*nga; // core volume
wc=cv*d*10^3; // weight of core
pc=wc*cl; // total core loss
Ic=pc/e; // core loss current
io=sqrt(Ic^2+irm^2);
printf('No load current on primary side is %f A\n',io);
pf=Ic/io; 
printf('No load power factor is %f\n',pf);
pf=e*io*pf; 
printf('power input at no load is %f W',pf);
