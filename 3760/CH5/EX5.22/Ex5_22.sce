clc;
v=2200; // rated voltage of motor
p=1500; // KW rating of motor
ie=15; // exciting current
is=750; // short circuit current
cl=60; // core loss in KW
fl=40; // frictional and windage loss in KW
// from table given in question for ie=15,
Ef=2140; // Excitation EMF
np=3; // number of phases
ef=Ef/sqrt(3); // per phase open circuit voltage
xs=ef/is; // synchronous reactance
vt=floor(v/sqrt(3)); // per phase terminal voltage
i=floor(vt/xs); // current phasor lagging vt 
pd=((p/2)+cl+fl)/np; // mechanical power developed per phase at half-full load output
ia=pd*1000/vt; // working component of armature current
// as resistance =0 , armature current=0 therefore radius of power circle=0 that is it becomes line with centre at zero 
printf('Working component of armature current is %f A\n',ia);
printf('Terminal voltage is %f A\n',vt);
printf('Synchronous reactance is %f ohm\n',xs);
disp('using above data and table given in solution, V-curves and variation of p.f. with field currents can be plotted');
