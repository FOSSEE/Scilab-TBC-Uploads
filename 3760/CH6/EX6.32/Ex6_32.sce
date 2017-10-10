clc;
P=7500; // rated power of induction motor
v=400; // rated voltage of motor
To=6; // no load torque
fs=0.04; // full load slip
p=6; // number of poles
f=50; // frequency
ns=(120*f)/p; // synchronous speed
Tl=(P*60)/(2*%pi*ns*(1-fs)); // full load torque
s=(To*fs*v^2)/(Tl*(v/2)^2); // slip at no load
no=ns*(1-s); 
printf('No load speed of motor is %f rpm\n',no);

  
