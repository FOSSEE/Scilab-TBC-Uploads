//The ac Motor Control//
//Example 15.3//
S1=0.04;//value of slip in of induction motor//
Ns=1500;//value of initial speed in rpm//
N2=1300;//value of speed reduced to in rpm//
N1=Ns*(1-S1);//valu of speed N1 in rpm//
printf('value of speed N1=%frpm',N1);
f=(Ns-N1)/(Ns-N2);
printf('\nvalue of f=%f',f);
T1=2000;//developing torque in induction motor in watts//
T2=T1/f;//new value of torque developed by the motor in watts//
printf('\nvalue of new torque developed=T2=%fWatts',T2);
 