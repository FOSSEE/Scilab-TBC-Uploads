//Example 20_2
clc();
clear;
//To find the rms current in the circuit 
f=20       //Units in Hz
c=4*10^-7       //Units in F
xc=1/(2*%pi*f*c)         //Units in Ohms/sec
f=2*10^6        //Units in Hz
xc1=1/(2*%pi*f*c)         //Units in Ohms/sec
v=80         //Units in V
i=v/xc          //Units in A
i1=v/xc1          //Units in A
printf("The RMS current when f=20 Hz is=%.5f Ohms\nThe RMS current when f=2*10^6 Hz is=%.2f Ohms",i,i1)
