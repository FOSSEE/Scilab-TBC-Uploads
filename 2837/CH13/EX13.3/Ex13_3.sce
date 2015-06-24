clc
clear
//Initialization of variables
p1=50 //psia
t1=100+460 //R
R1=48.3
R2=55.2
v1=4 //cu ft
p2=100 //psia
v2=3 //cu ft
t2=200+460 //R
cv1=0.157
cv2=0.177
cpm=0.219
J=778
//calculations
m1=144*p1*v1/(R1*t1)
m2=144*p2*v2/(R2*t2)
tf=(m1*cv1*(t1-460) + m2*cv2*(t2-460))/(m1*cv1+m2*cv2)
Po2=v1/(v1+v2) *(tf+460)/t1 *p1
ds=cpm*log((tf+460)/t1) - R1/J *log(Po2/p1)
dss=ds*m1
//results
printf("Change in entropy = %.4f unit",dss)
