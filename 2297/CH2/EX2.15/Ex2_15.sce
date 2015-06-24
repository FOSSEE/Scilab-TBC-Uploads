// Example 2.15 :parameters
clc;
close;
format('v',6)
// given :
z=40+%i*30;//resistance in ohms
zph=sqrt(real(z)^2+imag(z)^2);//resistance in ohms
pf=real(z)/zph;//power factor
v=400;//voltage in volts
vp=v/(sqrt(3));//voltage in volts
pc=vp/zph;//current in amperes
lv=v;//voltage in volts
lc=pc;//current om amperes
p=sqrt(3)*v*lc*pf;//power in watts
disp("part (a) Star")
disp(round(vp),"phase voltage,(V)=")
disp(round(pc),"phase current,(A)=")
disp(lv,"line voltage ,(V)=")
disp(lc,"line current,(A)=")
disp(p,"power ,(W)=")
z1=40+%i*30;//ohms
zph1=sqrt(real(z1)^2+imag(z1)^2);//ohms
pf1=real(z1)/zph1;//power factor
v1=400;//volts
vp1=v1;//volts
pc1=vp1/zph1;//amperes
lv1=v1;//volts
lc1=pc1*sqrt(3);//amperes
p1=sqrt(3)*v1*lc1*pf1;//watts
disp("part (b) Delta")
disp(round(vp1),"phase voltage,(V)=")
disp(round(pc1),"phase current,(A)=")
disp(lv1,"line voltage ,(V)=")
disp(lc1,"line current,(A)=")
disp(p1,"power ,(W)=")
