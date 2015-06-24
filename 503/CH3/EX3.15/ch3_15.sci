// To determine voltage regulation and efficiency

clc;

r=150*1000;                    //rating in va
v1=2400;
v2=240;
a=v2/v1;
R_hv=.2+.002/a^2;
X_hv=.45+.0045/a^2;
I_2fl=r/v2;
pf=0.8        //lagging
phi=acosd(pf);
I_2=I_2fl*a;
vd=I_2*(R_hv*cosd(phi)+X_hv*sind(phi));
V2=v1;
vr=(vd/V2)*100;        disp(vr,'vol reg(%)');
V1=v1+vd;
P_out=r*pf;
P_c=(I_2^2)*R_hv;        //copper loss
P_i=(V1^2)/10000;
P_L=P_c+P_i;
n=P_out/(P_out+P_L);        disp(n*100,'eff(%)');

I_o(1)=V1/(10*1000);
I_o(2)=-V1/(1.6*1000);       //inductive effect
I2(1)=I_2*(cosd(phi));    
I2(2)=I_2*(-sind(phi));
I_1=I_o+I2;     
b=sqrt(I_1(1)^2+I_1(2)^2);
disp(b,'I_1(A)');
pff=cosd(atand(I_1(2)/I_1(1)));
disp(pff,'pf');