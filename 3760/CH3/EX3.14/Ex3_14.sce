clc;
s=81; // number of slots
p=6; // number of poles
np=3; // number of phases 
cs=13; // coil span in terms of slot pitches
v=60; // phase spread for three phase winding
f3=0.4; // ratio of third harmonic flux to first harmonic flux
f5=0.25; // ratio of fifth harmonic flux to first harmonic flux
spp=s/(p*np); // // spp is not an integer, the 2-phase winding is a fractional slot winding, therefore Sk is given by
Sk=spp*2;
ap=(p*180)/s;
Cs=cs*ap; // coil span
e=180-Cs; // chording angle
kd1=sind(v/2)/(Sk*sind(v/(2*Sk))); // distribution factor for fundamental harmonic
kp1=cosd(e/2); // coil span factor
kd3=sind((3*v)/2)/(Sk*sind((3*v)/(2*Sk))); // distribution factor for third harmonic
kp3=cosd((3*e)/2); // coil span factor for third harmonic
kd5=sind((5*v)/2)/(Sk*sind((5*v)/(2*Sk))); // distribution factor for fifth harmonic
kp5=cosd((5*e)/2); // coil span factor for fifth harmonic
kw1=kd1*kp1; // winding factor for fundamental harmonics
kw3=kd3*kp3; // winding factor for third harmonic
kw5=kd5*kp5; // winding factor for fifth harmonic 
ep3=(kw3*f3)/kw1; 
printf('rms value of third harmonic emf is %f times the fundamental harmonic emf\n',ep3);
ep5=(kw5*f5)/kw1; 
printf('rms value of fifth harmonic emf is %f times the fundamental harmonic emf\n',ep5);
ep=sqrt(1+ep3^2+ep5^2); // resultant phase emf
el=sqrt(3)*sqrt(1+ep5^2); // resultant line emf
r=el/ep; 
printf('Ratio of resultant line emf to resultant phase emf is %f',r);  
