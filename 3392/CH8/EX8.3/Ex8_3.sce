clc
// initialization of variables
clear
t1=1 //mm
t2=2 //mm
oT=9.67 //mm distance between base and the centroid of each T-ection
y2_bar=100+10+1+oT //mm  (follwos from the figure)
A1=400 //mm^2
y1_bar=100 //mm
A2=324 //mm^2
Ix=2*A1*y1_bar^2+2*A2*y2_bar^2
q1k=A2*y2_bar //q1=q1k*Vy/Ix
F1k=(oT+t1/2)*q1k  // Fi=Fik*Vy/Ix
F2k=60*q1k
F3k=(10+t1/2)*q1k
q2k=q1k+(A1*y1_bar)
F4k=(10+t2/2)*q2k
F5k=200*q2k
V_pk=2*(F1k+2*F3k+F5k)/Ix // V_p=V_pk*Vy
e=(-2*F1k*71-2*F3k*11+F2k*221+F4k*200)/Ix
printf('e = %.2f mm',e)
