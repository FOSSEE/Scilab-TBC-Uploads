// Example 9.1
format('v',6)
clc;
clear;
close;
// given data
V_CC= 10;// in V
V_BE= 0.7;// in V
R1= 2.2;// in kΩ
R2= 10;// in kΩ
R_E= 1;// in kΩ
R_C= 3.6;// in kΩ
R= 1.5;// in kΩ
// The base voltage
V_B= R1*V_CC/(R1+R2);// in V
// The emitter current,
I_E= (V_B-V_BE)/R_E;// in mA
// The collector current,
I_CQ= I_E;// in mA
// The collector emitter voltage,
V_CE= V_CC-I_E*(R_C+R_E);// in V
V_CEQ= V_CE;// in V
// The saturation current,
I_Csat= V_CC/(R_C+R_E);// in mA
V_CEcutoff= V_CC;// in V
V_CE= 0:0.1:V_CEcutoff;// in V
I_C= (V_CC-V_CE)/(R_C+R_E);// in mA
// The dc and ac load line
subplot(121)
plot(V_CE,I_C)
xlabel("V_CE in volts")
ylabel("I_C in mA");
title("DC load line")
r_L= R_C*R/(R_C+R);// in kΩ
I_Csat= I_CQ+V_CEQ/r_L;// in mA
Vce_cutoff= V_CEQ+I_CQ*r_L;// in V
x=[0 Vce_cutoff];
y=[I_Csat 0]
subplot(122)
plot(x,y)
xlabel("V_CE in volts")
ylabel("I_C in mA");
title("AC load line")
disp("DC and AC load line shown in figure.")
