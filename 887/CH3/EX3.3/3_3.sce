clc
//ex3.3
C=10*10^-6;
t_1=[0:0.001:1];
t_2=[1.001:0.001:3];
t_3=[3.001:0.001:5];
t=[t_1,t_2,t_3];
//voltage variations
V_1=1000*t_1;
V_2=0*t_2+1000;
V_3=500*(5-t_3);
//current i=C*dv/dt, for above equations we get
i_1=C*(0*t_1+1000);
i_2=C*(0*t_2);
i_3=C*(0*t_3-500);
i=[i_1,i_2,i_3];
//power delivered, P=V*i
P_1=C*(10^6*t_1);
P_2=C*(0*t_2+1000);
P_3=C*(-25*10^4*(5-t_3));
P=[P_1,P_2,P_3];
//energy stored, W=(1/2)*C*V^2
W_1=(1/2)*C*V_1^2;
W_2=(1/2)*C*V_2^2;
W_3=(1/2)*C*V_3^2;
W=[W_1,W_2,W_3];
subplot(221)
plot(t,i*10^3)
xtitle('current vs time','time in seconds','current in mA')      //mA-milli amperes(10^-3)
subplot(222)
plot(t,P)
xtitle('power delivered vs time','time in seconds','power in watts')
subplot(223)
plot(t,W)
xtitle('energy stored vs time','time in seconds','work in joules')
