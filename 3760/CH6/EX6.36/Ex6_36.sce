clc;
sm=0.2; // slip
f1=50; // rated frequency of 3- phase induction motor
f2=45; // applied frequency
fr=f2/f1; // ratio of frequenciesir=fr/vr;
ir=sqrt((sm^2+1)/(sm^2+fr^2));
printf('Ratio of starting current at %d Hz to starting current at %d Hz is %f \n',f2,f1,ir);
tr=(sm^2+1)/(sm^2+fr^2);
printf('Ratio of starting torque at %d Hz to starting torque at %d Hz is %f \n',f2,f1,tr);
tmr=1/fr;
printf('Ratio of maximum torque at %d Hz to maximum torque at %d Hz is %f \n',f2,f1,tmr);
