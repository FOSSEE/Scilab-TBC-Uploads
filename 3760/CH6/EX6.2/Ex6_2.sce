clc;
Nf=1440; //full load speed
f=50; //frequency

disp('case a');

P=fix((120*f)/Nf); //formula for finding poles
mprintf('The number of Poles is %d\n',P);

disp('case b');


Ns=(120*f)/P; //finding synchronous speed
s=(Ns-Nf)/Ns; //finding slip at full load
f2=s*f; //rotor frequency
mprintf('The full load slip is %f and the rotor frequency is %f Hz\n',s,f2);

disp('case c');


//speed of stator field w.r.t stator structure is Ns 
Nss=Ns; 
// answer for speed of stator field with respect to stator structure is given wrong in book
Wss=(2*%pi*Ns)/60;
Nsr=Ns-Nf; //speed of stator field w.r.t rotor structure
Wsr=(2*%pi*Nsr)/60;
printf('The speed of stator field w.r.t stator is %f rad/sec ,%f rpm\n and w.r.t rotor is %f rad/sec ,%f rpm\n',Wss,Nss,Wsr,Nsr);

disp('case d');


//speed of rotor field w.r.t stator structure is Nf+Ns 
Nrr=(120*f2)/P; //speed of rotor field w.r.t rotor structure
Nrs=Nf+Nrr;  
// answer for speed of rotor field with respect to rotor structure is given wrong in book
Wrs=(2*%pi*Nrs)/60; 

Wrr=(2*%pi*Nrr)/60;
//The stator and rotor fields are stationary w.r.t to each other 
printf('The speed of rotor field w.r.t stator structure is %f rad/sec, %f rpm\n and w.r.t rotor structure is %f rad/sec, %f rpm and speed of rotor field w.r.t stator field is 0',Wrs,Nrs,Wrr,Nrr);
