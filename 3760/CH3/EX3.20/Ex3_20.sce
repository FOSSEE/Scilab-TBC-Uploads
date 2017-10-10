clc;
p=2; // number of pole
i=24; // phase current
t=300; // full pitched turns 
v=60; // phase spread
np=3; // number of phases
nph=t/np; // series turn per phase
j=(nph*sqrt(2)*i*180)/(v*%pi); // peak value of uniform current density
disp('case a');
A=(j*v*%pi)/(2*180); // peak amplitude of trapezoidal m.m.f wave 
printf('Peak amplitude of trapezoidal m.m.f wave is %f ATs/pole\n',A);
disp('case b'); 
kd=sind(v/2)/((v/2)*(%pi/180)); // distribution factor
fp=(4*kd*A)/%pi; 
printf('Peak value of fundamental mmf wave is %f AT/pole\n',fp);
fr=(4*3*A)/(%pi^2*sqrt(2));
printf('RMS value of fundamental mmf wave is %f AT/pole\n',fr);
