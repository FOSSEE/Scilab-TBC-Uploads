// Example 9.5
format('v',5)
clc;
clear;
close;
// given data
V_E= 1;// in V
R_E=1*10^3;// in Ω
R_C= 4*10^3;// in Ω
V_CC= 10;// in V
I_CQ= V_E/R_E;// in A
I_C= I_CQ;// in A
V_CEQ= V_CC-I_C*(R_C+R_E);// in V
// (i) when R_L = 1 MΩ, the value of 2I_CQrL
R_L= 1*10^6;// in Ω
r_L= R_L*R_C/(R_L+R_C);// in Ω
I_CQrL= I_CQ*r_L;//in A
disp(2*I_CQrL,"When R_L = 1 MΩ, the value of 2I_CQrL in volts is : ")
// (ii) when R_L = 100 kΩ, the value of 2I_CQrL
R_L= 100*10^3;// in Ω
r_L= R_L*R_C/(R_L+R_C);// in Ω
I_CQrL= I_CQ*r_L;//in A
disp(2*I_CQrL,"When R_L = 100 kΩ, the value of 2I_CQrL in volts is : ")
// (iii) when R_L = 10 kΩ, the value of 2I_CQrL
R_L= 10*10^3;// in Ω
r_L= R_L*R_C/(R_L+R_C);// in Ω
I_CQrL= I_CQ*r_L;//in A
disp(2*I_CQrL,"When R_L = 10 kΩ, the value of 2I_CQrL in volts is : ")
// (iv) when R_L = 1 kΩ, the value of 2I_CQrL
R_L= 1*10^3;// in Ω
r_L= R_L*R_C/(R_L+R_C);// in Ω
I_CQrL= I_CQ*r_L;//in A
disp(2*I_CQrL,"When R_L = 1 kΩ, the value of 2I_CQrL in volts is : ")
// (v) when R_L = 100 Ω, the value of 2I_CQrL
R_L= 100;// in Ω
r_L= R_L*R_C/(R_L+R_C);// in Ω
I_CQrL= I_CQ*r_L;//in A
disp(2*I_CQrL,"When R_L = 100 Ω, the value of 2I_CQrL in volts is : ")
