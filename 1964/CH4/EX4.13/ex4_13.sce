//Chapter-4, Example 4.13, Page 138
//=============================================================================
clc
clear
//INPUT DATA
R=60;//resistance in ohms
Rf=50;//resistance in ohms
Rr=500;//resistance in ohms
V=120;//supply voltage in volts
f=50;//freq in hz
//CALCULATIONS
peak=V*sqrt(2);//peak value of applied voltage
peak1=peak/(R+Rf);//peak value of current in forward direction
peak2=peak/(R+Rr);//peak value of current in reverse direction
i=((2*peak1)-(2*peak2))/(2*%pi);//current in moving coil ammeter over the period 0 to 2*(%pi)
i1=((%pi/2)*((peak1)^2+(peak2)^2))/(2*(%pi));//mean current over the period 0 to 2*(%pi)
rms=sqrt(i1);//rms value in hot wire ammeter
mprintf("rms value in hot wire ammeter is %1.3f A\n",rms);
If=(peak1)/(sqrt(2));//rms value in forward direction
mprintf("rms value in forward direction is %1.2f A\n",If);
Ir=(peak2)/(sqrt(2));//rms value in reverse direction
mprintf("rms value in reverse direction is %1.2f A\n",Ir);
av=((R+Rf)*((If)^2)+(R+Rr)*((Ir)^2))/(2);
mprintf("average power dissipated is %2.2f W\n",av);
pf=((Rf)*((If)^2)+(Rr)*((Ir)^2))/(2);
mprintf("power dissipated in rectifier is %2.1f W\n",pf);
//=================================END OF PROGRAM==============================

