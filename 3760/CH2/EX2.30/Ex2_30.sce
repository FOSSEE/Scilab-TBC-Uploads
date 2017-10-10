

clc;
n=1200; // number of turns in exciting coil
a=6*5*10^-4; // area of cross section of core
disp('case a');
x=0.01; // displacement of coil
i=2; // exciting current
uo=4*%pi*10^-7; // free space permeability
Wf=(n^2*uo*a*i^2)/(4*x); 
printf('Field energy stored is %f J\n',Wf);
F=(-n^2*uo*a*i^2)/(4*x^2);
printf('Force on armature is %f N\n',F);
disp('case b');
x1=0.005; // further displacement of coil
v1=(n^2*uo*a*i)/(2*x); // flux linkage corresponding to displacement 1 cm
v2=(n^2*uo*a*i)/(2*x1); // flux linkage corresponding to displacement  0.5 cm
M=((v2-v1)*i)/2; 
printf('Mechanical energy output is %f J\n',M);
disp('case c');
// after deriving expression
Wm=integrate('(-n^2*uo*a)/x^2','x',x,x1);
printf('Mechanical work done is %f J\n',Wm);
disp('case d');
// for x=0.005 flux linkage is constant than current will change
i2=v1/((2*n^2*uo*a)/(2*x));
Wm=((i-i2)*v1)/2;
printf('Mechanical work done if flux linkage are maintained constant is %f J\n',Wm);
disp('case e');
// after the expression is derived
Wm=integrate('(-v1^2)/(n^2*uo*a)','x',x,x1);
printf('Mechanical work done if flux linkage are maintained constant is %f J\n',Wm);
