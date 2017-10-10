clc;
p=4000; // rated power of generator
v=250; // rated voltage of generator
ra=0.25; // armature resistance
rf=100; // fiel resistance
vr=20; // improving factor for voltage regulation
g1=120; // generator gain
// after deriving required expression
il=p/v; // load current
vgr=((il*ra)/v)*(1/vr); // pu full load generator regulation
dvt=-vgr*v; // decrease in terminal voltage of generator from no load to full load 
disp('case a');
s=0.1; // feedback potentiometer setting
A=(-dvt*rf-il*ra*rf)/(dvt*s*g1);
printf('Amplifier gain is %f\n',A);
disp('case b');
s=1; // feedback potentiometer setting
A=(-dvt*rf-il*ra*rf)/(dvt*s*g1);
printf('Amplifier gain is %f\n',A);
 
