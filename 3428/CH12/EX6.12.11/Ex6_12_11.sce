//Section-6,Example-3,Page no.-P.42
clc;
K_B=1.25*10^6
n_A=1000/18
n_B=n_A/K_B
p_B1=0.1*760
p_B2=5*760
p_B3=2*760
n_B1=(n_B*p_B1)
m1_CO2=n_B1
disp(m1_CO2,'Molality of CO2(mol/kg)')
n_B2=(n_B*p_B2)
m2_CO2=n_B2
disp(m2_CO2,'Molar conc. of CO2(mol/L)')
n_B3=(n_B*p_B3)
m3_CO2=n_B3
disp(m3_CO2,'Molar conc. of CO2(mol/L)')
