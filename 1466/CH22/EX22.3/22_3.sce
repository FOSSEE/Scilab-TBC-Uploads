
clc
//initialisation of variables
l1=30//in
n=375//rpm
l2=20//in
va=10//ft/sec
H=50//ft
g=32.2//ft/sec^2
//CALCULATIONS
v=n*%pi*l1/(12*60)
v1=v*l2/l1
vf=va*l2/l1
thw=H-(va*va/(2*g))
the=thw*100/H
aw=100*550/(21*62.4)
ae=aw*100/50
Vw=thw*g/v
alp=atan(vf/Vw)
k=atan(vf/(v-Vw))
//RESULTS
printf ('\n most suitable angle= %.1f ',180-k*180/%pi)
