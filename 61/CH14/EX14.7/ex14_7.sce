//ex14.7
V_MOD_max=10;
V_MOD_min=1;
V=9;
V_in=50*10^-3;
R_BIAS=56*10^3;
R_L=10*10^3;
K=16;    //in microSiemens per microAmpere
I_BIAS_max=(V_MOD_max-(-V)-1.4)/R_BIAS;
g_m_max=K*I_BIAS_max;
A_v_max=g_m_max*R_L;
V_out_max=A_v_max*V_in;
I_BIAS_min=(V_MOD_min-(-V)-1.4)/R_BIAS;
g_m_min=K*I_BIAS_min;
A_v_min=g_m_min*R_L;
V_out_min=A_v_min*V_in;
t=0:0.01:4;
f=1;    //assume frequency 1 hertz
y=((V_out_max/4-V_out_min/4)*sin(2*%pi*f.*t)+(V_out_min/2+V_out_max/2)/2).*sin(2*9*%pi*f.*t);
plot(t,y)
xtitle('OTA amplitude modulator')

