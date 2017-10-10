//Example 9.2, Page Number 462
//Flux budget
clc;

to=0//The Transmitter Output in dBm
rs=-50//The Receiver Sensitivity in dBm
rm=50//The Required Margin in dBm

//System Loss
f=30//Fiber loss in db
d=1//Detector Coupling Loss in db
t=5//Total Splicing Loss (0.5 DB x 10) in db
h=5//Headroom for Temperature range,ageing effects & Future Splices in db
t=f+d+t+h  //The total power attenuation
p=50-t

mprintf("The total attenuation is:%d dB",t)
mprintf("\nHence the excess power margin is 50 - %d =%d dB\n",t,p);
