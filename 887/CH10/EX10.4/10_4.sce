
clc
//ex10.4
V_ss=24;
R=1.2*10^3;
R_L=6*10^3;
//by grouping linear elements together on left side of diode
V_T=V_ss*R_L/(R+R_L);      //thevenin voltage
//zeroing sources 
R_T=1/((1/R)+(1/R_L));      //thevenin resistance
//load-line equation is V_T+R_T*i_D+V_D=0
//locating the operating point
V_D=-10;
V_L=-V_D;      //load voltage
I_s=(V_ss-V_L)/R;      //source current
//diode characteristic cannot be plotted
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(V_L,'load voltage in volts')
disp(I_s,'source current in amperes')      //milli-10^-3
