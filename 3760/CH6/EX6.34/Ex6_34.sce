clc;
f1=50; // rated frequency of 3- phase induction motor
f2=40; // applied frequency
vr=0.9; // ratio of applied voltage to rated voltage
m=3; // number o phases
fr=f2/f1; // ratio of frequencies
ir=fr/vr;
printf('Ratio of starting current at %d Hz to starting current at %d Hz is %f \n',f1,f2,ir);
tr=(m/f1)*(f2/m)*(fr/vr)^2;
printf('Ratio of starting torque at %d Hz to starting torque at %d Hz is %f \n',f1,f2,tr);
tmr=(m/f1)*(f2/m)*(fr/(vr)^2);
printf('Ratio of maximum torque at %d Hz to maximum torque at %d Hz is %f \n',f1,f2,tmr);
vr1=sqrt((m/f1)*(f2/m)*fr^2);
printf('For the same starting torque ratio of voltage at %d Hz to ratio of voltage at %d Hz is %f\n',f2,f1,vr1);
vr2=sqrt((m/f1)*(f2/m)*fr);
printf('For the same maximum torque ratio of voltage at %d Hz to ratio of voltage at %d Hz is %f\n',f2,f1,vr2);
// answer for ratio of v2/v1 for same starting torque is slightly different from what is given in book
