//ex14.7
V_in=0;
I_B_max=100*10^-9;      //maximum bias current
I_os_max=40*10^-9;      //maximum offset current magnitude
V_os_max=2*10^-3;      //maximum offset voltage
R_1=10*10^3;
R_2=100*10^3;
//we approach in such a way to calculate output voltage due to each of dc sources and using superposition
//1)OFFSET-VOLTAGE
//As we place offset voltage at noninverting input
V_o_osV_max=-(1+(R_2/R_1))*(-V_os_max);
V_o_osV_min=-(1+(R_2/R_1))*V_os_max;
//2)BIAS-CURRENT SOURCES
//assuming ideal opamp conditions
V_i=0;
I_1=0;
I_2=-I_B_max;
V_o_bias_max=-R_2*I_2-R_1*I_1;
V_o_bias_min=0;      //no minimum value of I_B is specified
//3)OFFSET-CURRENT SOURCE
//by analysis as in bias-current sources
V_o_osI_max=R_2*I_os_max/2;
V_o_osI_min=-R_2*I_os_max/2;

V_o_max=V_o_osV_max+V_o_bias_max+V_o_osI_max;      //maximum output volage
V_o_min=V_o_osV_min+V_o_bias_min+V_o_osI_min;      //minimum output voltage
disp(V_o_max*10^3,'Maximum output voltage in milli-volts')
disp(V_o_min*10^3,'Minimum output voltage in milli-volts')
