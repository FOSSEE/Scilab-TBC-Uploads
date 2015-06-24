// To calculate volatage regulation, volatage at load terminals and operating efficiency

clc;
S=20*1000;
V1=200;
V2=2000;
I1=S/V1;
I2=S/V2;
Rh=3;
Xh=5.2;
pf=0.8;            
phi=acosd(pf);
Vha=V2+I2*(Rh*cosd(phi)+Xh*sind(phi));        //lagging
Vrega=(Vha-V2)*100/V2;     disp(Vrega,'vol-reg lagging(%)');
Vhb=V2+I2*(Rh*cosd(phi)-Xh*sind(phi));        //leading
Vregb=(Vhb-V2)*100/V2;     disp(Vregb,'vol-reg leading(%)');

V11=V2-I2*(Rh*cosd(phi)+Xh*sind(phi));
v1=V11/I2;        disp(v1,'V_L(V)');
ploss=120+10*10*3;
pop=v1*I1*cosd(phi);
eff=(1-(ploss/(ploss+pop)))*100;
disp(eff,'eff(%)');