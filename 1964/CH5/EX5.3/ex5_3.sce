//Chapter-5, Example 5.3, Page 160
//=============================================================================
clc
clear
//given i(t)=5*sin(314*t+(2*%pi/3))&& v(t)=20*sin(314*t+(5*%pi/6))
//CALCULATIONS
P1=2*(%pi/3);//phase angle of current in radians
P1=P1*(180/%pi);//phase angle of current in degrees
P2=5*(%pi/6);//phase angle of voltage in radians
P2=P2*(180/%pi);//phase angle of voltage in degrees
P3=P2-P1;//current lags voltage by P3 degrees
P4=P3*%pi/180;
pf=cos(P4);//lagging pf
Vm=20;//peak voltage
Im=5;//peak current
Z=Vm/Im;//impedance in ohms
R=(Z)*cos(P4);//resistance in ohms
Xl=sqrt((Z)^2-(R)^2);//reactance 
W=314;
L=Xl/W;//inductance in henry
V=Vm/sqrt(2);//average value of voltage
I=Im/sqrt(2);//average value of current
av=(V*I)*cos(P4);//average power in watts
mprintf("thus impedance,resistance,inductance,powerfactor and average power are %d ohms,%1.2f ohms,%g H,%1.3f and %2.1f W respectively",Z,R,L,pf,av);
//=================================END OF PROGRAM======================================================================================================

