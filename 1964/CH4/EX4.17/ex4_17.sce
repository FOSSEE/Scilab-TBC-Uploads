//Chapter-4, Example 4.17, Page 145
//=============================================================================
clc
clear
//CALCULATIONS
L=0.225;//inductance in henry
e=120;//voltage in volts
f=50;//frequency in c/s
Xl=(2*%pi*f*L);//inductive reactance in ohms
mprintf("Inductive reactance in ohms is %2.2f ohms\n",Xl);
L=0.2;//inductance in henry
Im=2.4;//peak value of current in A
//instantaneous voltage equation is e=(sqrt(2)*120*sin(314*t))
// indefinitely integrating e and later dividing by L we get it as
//i=-2.4*cos(314t);//instantaneous current in A
I=Im/(sqrt(2));//in A
mprintf("Current is %1.3f A\n",I);
m=(e*sqrt(2)*Im)/2;//maximum power delivered in watts
mprintf("Maximum power delivered to inductor is %3.2f watts\n",m);
mprintf("average power is zero\n")
mprintf("equation for voltage and current are 169.68*sin(314*t) and -2.4*cos(314*t) respectively");
//note:We cannot compute symbolic or indefinite integration in scilab.In order to verify your results use wxmaxima software.
//=================================END OF PROGRAM==============================
