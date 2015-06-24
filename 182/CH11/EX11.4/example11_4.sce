// to find the out put square wave frequency in 11-14
// example 11-4 in page 332
clc;
//Data given
Vcc=12;//supply voltage (+/-)12 V
R=10^3*[20 6.2 5.6];//resistance R1, R2 and R3 all in ohm
C1=0.2D-6;// capacitance=0.2 micro farad
// calculation
Vo=Vcc-1;// out put voltage = (+/-)(Vcc-1) in volt
utp=Vo*R(3)/(R(2)+R(3));// upper trigger point in volt
ltp=-utp;// lower trigger point in volt
t=C1*R(1)*log((Vo-ltp)/(Vo-utp));// time in seconds
printf("out put frequency=%d Hz",1/(2*t));
//result
//out put frequency=121 Hz