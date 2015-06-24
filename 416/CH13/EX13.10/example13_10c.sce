clc
clear
disp('example 13 10') //given //p=power/v=voltage/f=frequency/x=reactance/iff=feeder reactance take off
pa=20;va=11;f=50;xa=0.2;pb=30;xb=0.2;pf=10;xf=0.06;iff=0.5
pba=20;vba=11
xap=xa*pba/pb
xfp=xf*pba/pf
nx=xfp+(xa/2)*(xa/2+xap)/(xa+xap)
fcp=nx^(-1)
bc=pba*1000/(va*sqrt(3))
fc=fcp*bc
disp('a')
printf("fault current %.2fohm",fc)
ic=iff*fcp
xtx=ic^(-1)
xn=xtx-nx
zb=va^2/pba
xnn=xn*zb
disp('b')
printf("reactance required %.4fohm",xnn)