//Example 3.75:iron loss
clc;
clear;
close;
r2=18;//ohm
r4=550;//ohm
r3=1250;//ohm
r1=(r2*r4)/r3;//ohm
c3=0.5;//micro-F
l1=r2*r4*c3*10^-3;//mH
r4=550;//ohm
r31=1125;//ohm
r11=(r2*r4)/r31;//ohm
c31=3.85;//micro-F
l11=r2*r4*c31*10^-3;//mH
v=50;//volts
w=4000;//rad/s
i1=v/(sqrt((r1+r11)^2+(w^2*(l11*10^-3)^2)));//
tl=i1^2*r11;//W
cl=i1^2*r1;//W
il=tl-cl;//
disp(i1,"current is ,(A)=")
disp(il,"iron loss is ,(W)=")
