//Chapter-4, Example 4.16, Page 145
//=============================================================================
clc
clear
//given voltage applied is e=100*sin(314*t)
//CALCULATIONS
E=100/sqrt(2);
w=314;
L=0.2;//inductannce in henry
// indefinitely integrating e and later dividing by L we get it as
//i=-1.592*cos(314*t);//instantaneous current
//instantaneous power=e*i=-79.6*sin(628t)
P=0;//average power=0
Xl=w*L;//inductance in ohms
I=(E)/(Xl);//rms current
mprintf("inductive reactance and rms current is %2.1f ohms and %1.3f amps respectively",Xl,I);
//note:We cannot compute symbolic or indefinite integration in scilab.In order to verify your results use wxmaxima software.
//=================================END OF PROGRAM==============================

