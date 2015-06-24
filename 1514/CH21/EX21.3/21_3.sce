//chapter 21
//example 21.3
//page 678
clear all;
clc ;
//given
Rp=9.7;//kohm
Rk=270;//ohm
Eg=[-4 -3 -2 -1];
Rl=47;//load resistance in kohm
Epp=200;//VE
//total dc load resistance
R=Rp+Rk;
Ip=-1000*Eg/Rk;

plot(-Eg,Ip,'-.*')
xtitle('bias line','Eg(V)','Ip(mA)')

//plotting DC load line
Ip1= floor(Epp/Rp);
//plot dc load line with points A(Ip,Ep)=A(0,200) and B(Ip1,Ep)=B(Ip1,0)
figure,plot([200 0],[0 Ip1],'*b--');
xtitle('Dc load line','Ep(V)','Ip(mA)')

//after intersection of dc load line and bias line at Q
Eg=-2.4;Ip=8.8;
Ep=112;//plate to cathode voltage
printf("\nFor Q point,\nEg=%.1f V\nIp=%.1f mA\nEp=%dV",Eg,Ip,Ep);
R=(Rp*Rl)/(Rp+Rl);
deltaIp=10;
deltaEp=-deltaIp*R;
//ac load line with points 
//point C(deltaEp,deltaIp)=(32,10)
//point Q (112,8.8);
plot([32 112],[10 8.8],'*r--');
xtitle('dc(blue),ac(red) load line intersect at Q point','Ep(V)','Ip(mA)')







