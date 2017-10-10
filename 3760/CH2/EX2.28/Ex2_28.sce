clc;
r=4; // resistance of inductor
v=8; // maximum voltage
L=2; // inductance
t=2; // time required to reach maximum voltage value
disp('case a');
// after solving laplace equation we get expression for i(t) (transient current) i.e         i(t)=((exp^-2*t)+(2*t-1))/2
// for t=2 sec i(t) is given by
it=((exp(-2*t))+2*t-1)/2;
E=(L*it^2)/2; 
printf('Energy stored during %d sec is %f J\n',t,E);
disp('case b');
i=v/r; // current when transients are over
E=(L*i^2)/2; 
printf('Energy stored after transients are over is %d J\n',E);
