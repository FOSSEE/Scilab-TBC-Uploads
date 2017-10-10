clc;
l=0.02; // air gap length
i1=20; // intermediate current 
i2=40; // current during armature movement from open to close position
// from fig 2.11
f1=0.04*i1; // flux linkage during open position at A
f2=1.2+0.03*(i1-20); // flux linkage during close position at D
f3=0.04*i2; // flux linkage during open position at B
f4=1.2+0.03*(i2-20); // flux linkage during close position at C
// Mechanical work done=area ODCFEO-area OABFEO
W=((i1*f2)/2)+(((f2+f4)*i1)/2)-((i2*f3)/2); 
fe=W/l;
printf('Average electromagnetic force is %d N',fe);
