clc;
p=40000; // rated power of machine
v=400; // rated voltage of machine
l=1500; // short circuit load loss
m=3; // number of phases
ia1=1; // armature current in p.u. 
ra=0.118; // dc armature resistance at 30 degree cel.
ia2=p/(sqrt(3)*v); // rated armature current
l1=l/p; // short circuit loss in p.u.
ra1=l1/ia1^2;
printf('Effective armature resistance is %f p.u.\n',ra1);
l2=l/m; // short circuit load loss per phase 
ra2=l2/ia2^2; 
printf('Effective ac armature resistance is %f ohm per phase\n',ra2);
r=ra2/ra;
printf('Ratio of ac to dc armature resistance is given as %f ',r);
