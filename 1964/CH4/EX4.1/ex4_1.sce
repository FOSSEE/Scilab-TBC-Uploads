//Chapter-4, Example 4.1, Page 126
//=============================================================================
clc
clear
//CALCULATIONS
//for WAVEFORM 1
//Average Value
b1=2;
h1=5;
area1=0.5*b1*h1;//area under one complete cycle(area of a triangle)
av0=area1/2;//average value
//rms value
area2=0.33*(h1)^2*b1;
rms=sqrt(area2/b1);//rms value
//form factor
ff=rms/av0;//form factor
//peak factor
Kp=h1/rms;//peak factor
mprintf("WAVEFORM 1\n");
mprintf("average value=%1.1f amps,rms value=%1.3f amps,formfactor=%1.3f ,peak factor=%1.3f\n",av0,rms,ff,Kp);
//for WAVEFORM 2
//Average Value
T=1;//assuming time period is 1
h2=100;
h3=-50;
area3=(h2+h3)*(T/2);//area under one complete cycle(area of a rectangle)
av=area3/T;//average value
//rms value
area_under_squared_curve=((h2)^2+(h3)^2)*(T/2);
rms1=sqrt(area_under_squared_curve/T);//rms value
//form factor
ff1=rms1/av;//form factor
//peak factor
Kp1=h2/rms1;//peak factor
mprintf("WAVEFORM 2\n");
mprintf("average value=%d volts,rms value=%2.3f volt,formfactor=%1.2f ,peak factor=%1.2f\n",av,rms1,ff1,Kp1);
//for WAVEFORM 3
//Average Value
Vm=1;//assuming mean voltage is 1
a1=0.5*Vm*(%pi/3);//area of the triangle from 0 to (pi/3)
a2=Vm*(%pi/3);//area of the rectangle for period (pi/3) to (2*pi/3)
a3=0.5*Vm*(%pi/3);//area of the triangle from (2*pi/3) to pi
a=a1+a2+a3;
av2=(a/%pi);//average value
//rms value
area_under_squared_curv2=((Vm)^2*(%pi/3)*(5/3))
rms2=sqrt(area_under_squared_curv2/(%pi));//rms value
//form factor
ff2=rms2/av2;//form factor
//peak factor
Kp2=Vm/rms2;//peak factor
mprintf("WAVEFORM 3\n");
mprintf("average value=%1.3f volts,rms value=%1.3f volt,formfactor=%1.2f ,peak factor=%1.3f\n",av2,rms2,ff2,Kp2);
//for WAVEFORM 4
//Average Value
T2=1;//let timeperiod=1
av3=(100*(T2/2))/(T2/2);//average
//rms value
area_under_squared_curv3=((100)^2*(T2/2));
rms3=sqrt((area_under_squared_curv3)/(T2/2));//rms value
//form factor
ff3=rms3/av3;//form factor
//peak factor
Kp3=100/rms3;//peak factor
mprintf("WAVEFORM 4\n");
mprintf("average value=%d volts,rms value=%d volt,formfactor=%d ,peak factor=%d\n",av3,rms3,ff3,Kp3);
//=================================END OF PROGRAM==============================
