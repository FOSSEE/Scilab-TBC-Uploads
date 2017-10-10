clc
//given
alpha=55*%pi/180
N=1200//rpm
lift=.5//in
rn=.125//in ; noseradius
rmin=1.125//in ; minimum radius
OQ=rmin+lift-rn
OP=(OQ^2-1)/(2*(1-OQ*cos(alpha)))//from triangle opq fig 201(a)
PQ=OP+rmin-rn
phi=asin(OQ*sin(alpha)/PQ)
x1=[0:.0001:phi]
x2=[phi:.0001:alpha]
y1=4.477*(1-cos(x1))//from 9.6
y2=1.5*cos(alpha-x2)-1//from 9.9
v1=%pi*N*4.477*sin(x1)/(30*12)//from 9.7
v2=15.71*sin(alpha-x2)//from 9.10
f1=(%pi*N/30)^2*(4.477/12)*cos(x1)//from 9.8
f2=-1974*cos(alpha-x2)//from 9.11
a=[0:.0001:phi]
b=[phi:.0001:alpha]
p=[0:.0001:phi]
q=[phi:.0001:alpha]
subplot(3,1,3)
subplot(311)
plot(x1,y1,x2,y2)
xtitle("","angle","displacement")
subplot(312)
plot(a,v1,b,v2)
xtitle("","angle","velocity")
subplot(313)
plot(p,f1,q,f2)
xtitle("","angle","acceleration")

