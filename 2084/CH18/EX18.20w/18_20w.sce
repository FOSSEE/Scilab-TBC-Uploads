//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.20w
//calculation of position of diverging mirror to obtain real image at the source itself for given system

//given data
u=-15; //object distance(in cm)
f=10; //focal length(in cm) of converging lens
fm=12; //focal length(in cm) of convex mirror

//calculation
v=1/((1/f)+(1/u)); //lens formula
LI1=2*abs(u);
MI1=2*abs(fm);
LM=LI1-MI1;

disp(LM,'on the right of the lens mirror should be placed at a distance(in cm) of');
