clc;
v=2200; // rated voltage of motor
r=0.32; // per phase armature resistance
p=1500; // KW rating of motor
ie=15; // exciting current
is=750; // short circuit current
cl=60; // core loss in KW
fl=40; // frictional and windage loss in KW
IF=[5 10 15 20 25 30];
EFO=[ 760 1500 2140 2650 3040 3340]; // excitation EMF per phase
EFP=EFO/sqrt(3);
disp('Excitation EMF per phase(V) is');
disp(EFP);
// from table given for ie=15,
Ef=2140; // Excitation EMF
np=3; // number of phases
ef=Ef/sqrt(3); // per phase open circuit voltage
zs=ef/is; // synchronous impedance
vt=floor(v/sqrt(3)); // per phase terminal voltage
i=floor(vt/zs); // current phasor lagging vt 
ia=vt/(2*r); // armature current
pd=((p/2)+cl+fl)/np; // mechanical power developed per phase at half-full load output
R=ceil(sqrt((ia^2-((pd*1000)/r)))); 
printf('Radius of power circle is %f A\n',R);
printf('Current phasor is %f A\n',i);
printf('Synchronous impedance is %f ohm\n',zs);
disp('using above data and table given in solution, V-curves and variation of p.f. with field currents can be plotted');
