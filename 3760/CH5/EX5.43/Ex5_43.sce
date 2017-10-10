clc;
p=100*10^3; // rated power of alternator
v=440; // rated voltage of alternator
m=3; // number of phases
l1=340; // friction and windage losses
l2=480; // open circuit core losses
rf=180; // field winding resistance at 75 degree cel.
ra=0.02; // armature resistance per phase
vf=220; // voltage applied to field winding
pf=0.8; // power factor
disp('At half load');
ia=p/(sqrt(3)*v); // full load armature current
l3=(m*ia^2*ra)/4; // short circuit load loss at half load
l4=vf^2/rf; // field circuit loss
lt=l1+l2+l3+l4; // net loss
n=(1-(lt/((p/2)*pf+lt)))*100;
printf('Efficiency is %f percent\n',n);
disp('At full load');
l3=m*ia^2*ra; // short circuit load loss at full load
lt=l1+l2+l3+l4; // net loss
n=(1-(lt/(p*pf+lt)))*100;
printf('Efficiency is %f percent\n',n);
