clc
V1m(1)=1 //reference voltage in volts
V1m(2)=0.9//reduced voltage in volts
ratio=(V1m(1)/V1m(2))^2 //ratio of s2/s1
mprintf("s2/s1=%f\n",ratio)//ans may vary due to roundoff error
mprintf("I2(2)/I2(1)=s2*V1m(2)/s1*V1m(1)=%f\n",(V1m(2)/V1m(1))*ratio)//ans may vary due to roundoff error
mprintf("(copperloss)2/(copperloss)1=(I2(2)/I2(1))^2=%f\n",(V1m(1)/V1m(2))^2)//ans may vary due to roundoff error
s=0.03 //at 60Hz slip
ns=1800 //synchronous speed in rev/min
mprintf("Speed at 90 percent voltage=%frev/min\n",ns*(1-(ratio*s)))//ans may vary due to roundoff error




