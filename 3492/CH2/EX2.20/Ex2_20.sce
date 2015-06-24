clc
//Chapter2
//Ex_2.20
//Given
sigma=1*10^7 //ohm^-1*m^-1
T=300// kelvin
C_WFL=2.44*10^-8 //W*ohm/K2
X_d=0.15
K_c=sigma*T*C_WFL
K_eff=K_c*((1-X_d)/(1+0.5*X_d))
disp(K_eff,"Thermal Conductiity at room temperature in W/m/K")

