//Chapter-4, Example 4.19, Page 146
//=============================================================================
clc
clear
//CALCULATIONS
C=135;//capacitance in uF
E=150;//voltage in volts
f=50;//freq in c/s
Xc=1/(2*3.14*f*C*10^-6);//capacitive reactance in ohms
//equation for current is i=8.99*sin(314*t+(%pi/2))A
//instantaneous power is P=E*I*sin(2*w*t)
P=0;//average power
Im=8.99;//peak value of instantaneous current equation
I=(Im)/(sqrt(2));//rms current in amps
M=E*sqrt(2)*I*sqrt(2);//maximum power delivered in Watts
mprintf("thus capacitive reactance,Rms current and Maximum power delivered are %2.3f ohms ,%1.2f Amps,%1.0f Watts respectively",Xc,I,M);
//=================================END OF PROGRAM==============================
