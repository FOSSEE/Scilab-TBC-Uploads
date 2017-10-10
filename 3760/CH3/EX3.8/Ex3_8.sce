clc;
disp('case a'); 
cs=160*(%pi/180); // coil span in radian
ps=120*(%pi/180); // phase spread
kd=sin(ps)/(ps/2); // distribution factor for uniformly distributed winding
e=180-(cs*(180/%pi)); // chording angle
kp=cos((e/2)*(%pi/180)); // Coil span factor
wf=kd*kp; // winding factor
disp('Distribution factor is'); 
disp(kd); 
disp('Winding factor is');
disp(wf);
disp('case b');
s=9; // number of slots per pole
sa=180/s; // slot angular pitch
// for a phase spread of 120 , 6*20=120, 6 adjacent slots must belong to the same phase, therefore
p=6; // poles belonging to same phase
kd=sin(ps/2)/(p*sin(ps/(2*6)));
wf=kd*kp; 
disp('Distribution factor is'); 
disp(kd); 
disp('Winding factor is');
disp(wf);
