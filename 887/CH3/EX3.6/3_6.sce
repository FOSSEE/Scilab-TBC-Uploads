clc
//ex3.6
L=5;      //inductance
t_1=[0:0.001:2];
t_2=[2.001:0.001:4];
t_3=[4.001:0.001:5];
t=[t_1,t_2,t_3];
//corresponding current variations
i_1=(1.5)*t_1;
i_2=0*t_2+3;
i_3=(-3*t_3)+15;
//voltage V=L*(di/dt)
V_1=L*(0*t_1+(1.5));
V_2=L*(0*t_2);
V_3=L*(0*t_3-3);
V=[V_1,V_2,V_3];
//stored energy W=1/2*L*i^2
W_1=(1/2)*L*i_1^2;
W_2=(1/2)*L*i_2^2;
W_3=(1/2)*L*i_3^2;
W=[W_1,W_2,W_3];
//power P=V*i
P_1=L*t_1*(1.5^2);
P_2=0*t_2;
P_3=-3*L*(-3*t_3+15);
P=[P_1,P_2,P_3];
subplot(221)
plot(t,V)
xtitle('voltage vs time','time in seconds','voltage in volts')
subplot(222)
plot(t,W)
xtitle('energy vs time','time in seconds','energy in joules')
subplot(223)
plot(t,P)
xtitle('power vs time','time in seconds','power in watts')
