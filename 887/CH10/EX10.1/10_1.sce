clc
//ex10.1
V_ss=2;
R=1*10^3;
V_D=[0:0.001:2];
plot(V_D,10^3*(V_ss-V_D)/R)
xtitle('load line plot','voltage in volts','current in milli-amperes')      //milli-10^-3
//we use the equation V_ss=R*i_D+V_D
//at point B
i_D=V_ss/R;      //as V_D=0
//at point A
V_D=V_ss;      //as i_D=0
//now we see intersection of load line with characteristic and we get following at operating point
V_DQ=0.7;      //voltage
I_DQ=1.3*10^-3;      //current
//diode characteristic cannot be plotted
disp(V_DQ,'diode voltage at operating point in volts')
disp(I_DQ*10^3,'current at opeating point in milli-amperes')      //milli-10^-3

