clear;
clc;

//Example 5.5
//Caption : Program to Find the Rate of Heat Transfer and Entropy

//Given Values

//Gas A
rn_A=1;//rate[mol/s]
T_A=600;//[K]

//Gas B
rn_B=2;//rate[mol/s]
T_B=450;//[K]

//product
rn=rn_A+rn_B;//[mol/s]
T=400;//[K]
R=8.314;
Cp=(7/2)*R;
T_s=300;//Temperature[K]

//By equation (2.30) rQ=rn*H-rn_A*H_A-rn_B*H_B=rn_A(H-H_A)+rn_B*(H-H_B)  Rate of heat transfer
rQ=(rn_A*Cp*(T-T_A))+(rn_B*Cp*(T-T_B));//[J/s] or  [W]
//By eqn (5.22) rSg=rn*S-(rn_A*S_A)-(rn_B*S_B)-(rQ/T_s)  rate of entropy generation for the process
rSg=approx((rn_A*Cp*log(T/T_A))+(rn_B*Cp*log(T/T_B))-(rQ/T_s),3);//[J/K/s]

disp('J/s or W',rQ,'Rate of heat transfer')
disp('J/K/s',rSg,'Rate of entropy generation')

//End