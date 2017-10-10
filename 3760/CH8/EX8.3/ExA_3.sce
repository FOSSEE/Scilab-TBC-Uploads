clc;
lc=0.5; // core length in metre
dc=2.85*10^-2; // diameter of cross section of core
lg=2*10^-3; // length of air gap
N=500; // Number oof turns of coil
f=0.8*10^-3; // air gap flux
uo=4*%pi*10^-7; // permeability of free space
HATM=[1500 2210 2720 3500 4100];
BT=[0.9 1.1 1.2 1.275 1.3];
plot(HATM,BT);
xlabel('magnetic field intensity');
ylabel('flux density');
disp('case a');
ur=500; // relative permeability
Ac=(%pi/4)*dc^2; // Area of core
Rlg=lg/(uo*Ac); // reluctance of air gap
Rlc=lc/(uo*ur*Ac); // reluctance of iron core
Rt=Rlg+Rlc; // Total reluctance
I=(f*Rt)/N; // Exciting current
printf('Exciting current in coil is %f A\n',I);
disp('case b');
Ag=(%pi/4)*(dc+2*lg)^2; // air gap area 
Rlg=lg/(uo*Ag); // reluctance of air gap
I=(f*(Rlc+Rlg))/N; // Exciting current
printf('Exciting current after accounting for flux fringing is %f A\n',I);
disp('case c');
Bg=f/Ac; // Air gap flux density
Atg=(Bg*lg)/uo; // air gap mmf
// from the plot we can get the values of core flux density and magnetic field intensity
Bc=1.245; // core flux density in Tesla
H=3200; // magnetic field intensity in Ats/m
Atc=H*lc; // core mmf
mt=Atg+Atc; // total mmf
I=mt/N; // Exciting current
printf('Exciting current for third case is %f A',I);
