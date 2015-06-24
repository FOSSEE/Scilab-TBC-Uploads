//example 16.7
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
T1=80;
Tinfinity=20;//temperature
Rtc1=1e-3;//m2K/W
r1=0.002;
r2=0.003;
H=0.006;
k=200;
Rtb=638;//K/W
Rtf12=24.4;
Rtc=Rtc1/2/pi/r1/H;
Rtsleeve=log(r2/r1)/2/pi/H/k;
Requiv=(1/Rtf12+1/Rtb)^-1;
Rtot=Rtc+Rtsleeve+Requiv;
qt=(T1-Tinfinity)/Rtot
disp(qt,"heat transfer rate in W");
clear()
