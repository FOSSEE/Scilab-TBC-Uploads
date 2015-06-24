//The ac Motor Control//
//Example 15.1//
S1=2;//value of slip in percentage of slip ring induction motor//
Ns=1000;//value of stator speed in rpm//
Nr=500;//value of rotor speed in rpm//
S2=(Ns-Nr)*100/Ns;//valu of slip in percentage of motor//
printf('value of slip of motor=S2=%fpercentage',S2);
I1=50;//stator current in amps//
I2=I1*sqrt(S2/S1);
printf('\nvalue of new stator current=I2=%fAmp',I2);
 