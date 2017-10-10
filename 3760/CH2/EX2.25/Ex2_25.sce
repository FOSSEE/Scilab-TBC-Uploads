clc;
n=1000; // number of turns in exciting coil
a=5*5*10^-4; // cross section area of core
g=1*10^-2; // length of air gap
uo=4*%pi*10^-7; // free space permeability
disp('case a');
i=5; // coil current 
l=(n^2*uo*a)/(2*g);
printf('Inductance of coil is %f H\n',l);
E=(l*i^2)/2; 
printf('Field energy stored in inductor is %f Watt-sec\n',E );
fe=(i^2*a*n^2*uo)/(4*g^2);
printf('Force on the armature is %f N\n',fe);
disp('case b');
g1=0.5*10^-2; // reduced length of air gap
We=((n^2*uo*a)/(2*g1)-(n^2*uo*a)/(2*g))*i^2;
printf('Electrical energy supplied by source is %f Watt-sec\n',We);
disp('case c');
w=integrate('(n^2*uo*a*i^2)/(4*(g-x)^2)','x',0,g1);
printf('Mechanical work done is %f Watt-sec',w);
