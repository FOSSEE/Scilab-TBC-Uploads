// Example 5.1
// Capacitor Waveforms
t_1= 0:0.001:0.01;
t_2= 0.01:0.001:0.03;
t_3= 0.03:0.001:0.06;
v_1= 20*sin(50*%pi*t_1);
v_2=20;
v_3=-20*sin(50*%pi*t_3);
// Current Equations Can be obtained by using the relation i = C(dv/dt)
i_1=3*%pi*cos(50*%pi*t_1)*10^-3;
i_2=0;
i_3=-3*%pi*cos(50*%pi*t_3)*10^-3;
// Power Equations can be obtained by using the relation p=v*i
p_1=v_1.*i_1;
p_2=20*0;
p_3=v_3.*i_3;
// Energy stored can be obtained by using the relation w=0.5*C*v^2
C=60*10^-6;
w_1=0.5*C*[20*sin(50*%pi*t_1)]^2;
w_2=0.5*C*400;
w_3=0.5*C*[20*sin(50*%pi*t_3)]^2;
subplot(2,2,1)
plot(t_1,v_1,'-r',t_2,v_2,'-r',t_3,v_3,'-r')
xlabel('t(ms)');
ylabel('V');
title("Voltage");
subplot(2,2,2)
plot(t_1,i_1,'-g',t_2,i_2,'-g',t_3,i_3,'-g')
xlabel('t(ms)');
ylabel('i(mA)');
title("Current");
subplot(2,2,3)
plot(t_1,p_1,'-y',t_2,p_2,'-y',t_3,p_3,'-y')
xlabel('t(ms)');
ylabel('P(mW)');
title("Power");
subplot(2,2,4)
plot(t_1,w_1,'-m',t_2,w_2,'-m',t_3,w_3,'-m')
xlabel('t(ms)');
ylabel('w(mJ)');
title("Stored Energy");
