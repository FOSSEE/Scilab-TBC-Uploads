clear
clc

//Example 6.2
disp('Example 6.2')

deltaw=5;//kg/min
deltaT=20;//deg C
K=deltaT/deltaw
tau=5//min
T=140+0.632*20;//152.6 deg C

s=%s;
G=4/(5*s+1); //G=T'(s)/W'(s)

mprintf('\n T(s)/W(s)=%s','')
disp(G)

t=0:0.01:25;
n=length(t);
w=5*ones(1,n);
yt=csim(w,t,G)+140;
wt=w+120;
subplot(2,1,2);
plot2d(t,yt,rect=[0,130,25,160]);
xtitle("","Time(min)","$T(^0C)$")
xgrid();
subplot(2,1,1);
plot2d(t,wt,rect=[0,120,25,126],style=2)
xtitle("Fig 6.4","Time(min)","$w\ (kg/min)$")
xgrid();
