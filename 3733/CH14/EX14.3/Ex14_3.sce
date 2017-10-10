// Example 14_3
clc;funcprot(0);
//Given data
T_1=170;// °C
P_1=140;// bar
m_w=600;// The flow rate in the economiser in kg/sec
m_g=1250;// The flow rate of hot gases in kg/sec
T_go=450;// °C
v_g=12;// m/s
V_w=1.2;//The optimum velocity of water in  m/s
d_o=70;// mm
d_i=60;// mm
C_pg=1.12;// kJ/kg°C
P_v=8;// The vertical pitch of the coil in cm
C=5;// Clearance in mm
B=4.8;// Duct width in m
// (LMTD)_cross=(LMTD)_counter*1.12;
C_pw=4.2;// kJ/kg.°C
m=1;// kg
U_o=80;// Over all heat transfer coefficient in W/m^2°C

//Calculation
//From steam tables,at p=140 bar
T_s=336.75;// °C
h_f1=1571.2;// kJ/kg
v_w=0.00161;// m^3/kg
//At 170°C,
h_f2=m*C_pw*(T_1-0);//  kJ/kg
Q=m_w*(h_f1-h_f2);// kJ/sec
T_gi=T_go+(Q/(C_pg*m_g));//°C
Theta_i=(T_gi-T_s);// °C
Theta_o=(T_go-T_1);// °C
LMTD_counter=(Theta_i-Theta_o)/(log(Theta_i/Theta_o));// Logrithemic mean temperature difference in °C
LMTD_cross=LMTD_counter*1.12;// °C
A_s=(Q*10^3)/(U_o*LMTD_cross);// m^2
n=m_w/(((%pi/4)*(d_i/1000)^2*(V_w/v_w)));
L=(A_s/(%pi*(d_o/1000)*n));// meters
N=L/(B-(2*C/100));// The number of the turns of the coil 
printf('\nLength,L=%0.0f meters \nThe number of the turns of the coil=%0.0f',L,N);
// The answer provided in the textbook is wrong

