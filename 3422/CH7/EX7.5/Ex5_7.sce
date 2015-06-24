//Example , page 162//169
clc
Tr=(50*1000*60)/(2*%pi*960)
//disp(Tr)
Tmax=2*Tr
Tmin=300//in nm
Tlh=1500+Tmin
t=10//in sec
ws=(2*%pi*1000)/60//angular f
wr=(2*%pi*960)/60//angular f
temp=log((Tlh-Tmin)/(Tlh-Tmax))
j=(Tr/(ws-wr))*(t/temp)
//disp(j)
r=.9//in m
wt=j/r^2
//disp(wt)
printf("Weight of fly wheel is %f kg",wt)
//Part b
Tmax=994.72
Tmin=700
TL1=300
temp=log((Tmax-TL1)/(Tmin-TL1))
t=(j*temp*(ws-wr))/Tr
printf("\n The estimated time is %f s",t)