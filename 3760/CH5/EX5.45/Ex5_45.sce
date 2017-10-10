clc;
p=500*10^3; // rated power of alternator
v=11000; // rated voltage of alternator
m=3; // number of phases
l1=1500; // friction and windage losses
l2=2500; // open circuit core losses
ra=4; // armature resistance per phase
l3=1000; // field copper loss
pf=0.8; // power factor
disp('case a: Half load');
ia=p/(sqrt(3)*v); // armature current
l4=(m*ia^2*ra)/4; // short circuit load loss at half load
lt=l1+l2+l3+l4; // net loss
n=(1-(lt/((p/2)*pf+lt)))*100;
printf('Efficiency is %f percent\n',n);
disp('case b');
// for maximum efficiency variable losses=constant losses
iam=sqrt((l1+l2+l3)/(m*ra)); // armature current at maximum efficiency
pout=m*(v/sqrt(3))*iam*pf; // output power ta maximum efficiency
lt=2*(l1+l2+l3); // net losses
nm=(1-(lt/(pout+lt)))*100;
printf('Maximum efficiency is %f percent\n',nm);
