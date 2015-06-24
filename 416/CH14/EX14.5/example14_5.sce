clc
clear
disp('example 14.5')
cac=10000  //control area capacity
nol=5000  //normal operating
h=5       //inertial constent
r=3       //regulation
cf=1      //1%change in corresponds to 1% change in load
f=50      //frequency
d=cac/(2*f)
dpu=d/(cac)
kp=1/dpu
tp=2*h/(f*dpu)
printf("d=%.2fp.u.MW/hz, \nkp=%dhz/p.u.MW \n tp=%dsecond",dpu,kp,tp)