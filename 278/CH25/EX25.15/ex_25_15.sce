//find..
clc
//solution
//given
//ref fig 25.37,25,38,39
b=35//mm
u=0.4
r=150//mm
l=200//mm
q1=(%pi/180)*25//rad
q2=(%pi/180)*125//rad
p1=0.4//N/mm^2
Tbi=u*p1*b*r^2*(cos(q1)-cos(q2))//braking torque
Tb=2*Tbi//total braking torque
O1B=100
OO1=O1B/cos(q1)//mm
printf("OO1 is,%f mm\n",OO1)
Mn=0.5*p1*b*r*OO1*[(q2-q1)+0.5*(sin(2*q1)-sin(2*q2))]
printf("moment due to normal force is,%f N-mm\n",Mn)
Mf=u*p1*b*r*[r*(cos(q1)-cos(q2))+((OO1/4)*(cos(2*q2)-cos(2*q1)))]
printf("moment due to friction force is,%f N-mm\n",Mf)
F1=(Mn-Mf)/l//N
printf("F1 is,%f N\n",F1)
F2=(Mn+Mf)/l//N
printf("F2 is ,%f N\n",F2)
