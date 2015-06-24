clc
//ex3.1
C=1*10^-6;
//t in micro seconds
t_1=[0:0.001:2];
t_2=[2.001:0.001:4];
t_3=[4.001:0.001:5];
t=[t_1,t_2,t_3];
//corresponding voltage variations
V_1=5*t_1;
V_2=0*t_2+10;
V_3=-10*t_3+50;
//charge q=C*V
q_1=C*V_1;
q_2=C*V_2;
q_3=C*V_3;
q=[q_1,q_2,q_3];
subplot(121)
plot(t,q*10^6)
xtitle('charge vs time','time in Ms','charge in Mc')      //M-micro(10^-6)
//current i=C*dV/dt*10^6, for above equations we get
i_1=10^6*(0*t_1+C*(5));
i_2=10^6*0*t_2;
i_3=10^6*(0*t_3+C*(-10));
i=[i_1,i_2,i_3];
subplot(122)
plot(t,i)
xtitle('current vs time','time in Ms','current in amperes')      //M-micro(10^-6)
