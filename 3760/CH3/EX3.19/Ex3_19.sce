clc;
np=3; // number of phases
p=2; // number of poles
spp=5; // slots per pole per phase
n=4; // number of turns in coil
i=20; // per phase current
v=(spp*180)/(spp*np); // phase spread
imax=sqrt(2)*i; // maximum value of current
mmf=spp*n*imax; // resultant amplitude of mmf
kd=sind(v/2)/((v/2)*(%pi/180)); // distribution factor
fp=(4*mmf*kd)/%pi; // peak value of fundamental component
fr=(4*3*spp*n*i)/%pi^2; // rms value of fundamental component
printf('Maximum value of the peak of fundamental m.m.f wave is %f AT/pole\n',fp);
printf('RMS value of the peak of fundamental m.m.f wave is %f AT/pole\n',fr);
