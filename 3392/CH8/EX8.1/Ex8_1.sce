clc
// initialization of variables
clear
t=4 //mm
// calculations
l1=100 //mm See figure
l2=50 //mm See figure
ybar=125 //mm
t=t*10^-3
ybar=ybar*10^-3
l1=l1*10^-3
l2=l2*10^-3
Ix=2*t*(2*(l1+l2))^3/12-t*(2*l1)^3/12
qAk=l1*t*ybar // qA=qAk*V
qBk=qAk+l1*t*l1/2
qave=qAk+2/3*(qBk-qAk)
F2k=200*qave*10^-3 //F2=F2k*V
DO=100/tan(30*%pi/180) // from figure
// Now we need to solve the following equation
// (DO-e)*V=DO*F2
e=DO*(1-F2k/Ix)
printf('e = %.1f mm',e)
