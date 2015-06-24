clc
clear 
printf("example 3.23 page number 110\n\n")

//to find the composition of flue gas

C = 0.8   //in kg
H2 = 0.05   //in kg
S = 0.005   //in kg
ash = 0.145  //in kg

//required oxygen in kg
C_O2 = C*(32/12);  
H2_O2 = H2*(16/2);
S_O2 = S*(32/32);
O2_supplied = C_O2+S_O2+H2_O2;
printf("amount of O2 supplied = %f kg\n\n",O2_supplied)

wt_air = O2_supplied*(100/23);
wt_airsupplied = 1.25*wt_air;
printf("amount of air supplied = %f kg\n\n",wt_airsupplied)

//flue gas composition
m_N2 = wt_airsupplied*0.77;   //in kg
mole_N2 = m_N2/28;

m_O2 = (wt_airsupplied-wt_air)*0.23;   //in kg
mole_O2 = m_O2/32;

m_CO2 = C*(44/12);   //in kg
mole_CO2 = m_CO2/44;

m_H2O = H2*(18/2);   //in kg
mole_H2O = m_H2O/18;

m_SO2 = S*(64/32);   //in kg
mole_SO2 = m_SO2/64;

m = m_N2+m_O2+m_CO2+m_H2O+m_SO2

//percent by weight
w_N2 = m_N2/m;
printf("percentage of N2 by weight = %f\n\n",w_N2*100)

w_O2 = m_O2/m;
printf("percentage of O2 by weight = %f\n\n",w_O2*100)

w_CO2 = m_CO2/m;
printf("percentage of CO2 by weight = %f\n\n",w_CO2*100)

w_H2O = m_H2O/m;
printf("percentage of H2O by weight = %f\n\n",w_H2O*100)

w_SO2 = m_SO2/m;
printf("percentage of SO2 by weight = %f\n\n",w_SO2*100)

m1 = mole_N2+mole_O2+mole_CO2+mole_H2O+mole_SO2

//percent by mole 
x_N2 = mole_N2/m1;
printf("percentage of N2 by mole = %f\n\n",x_N2*100)

x_O2 = mole_O2/m1;
printf("percentage of O2 by mole = %f\n\n",x_O2*100)

x_CO2 = mole_CO2/m1;
printf("percentage of CO2 by mole = %f\n\n",x_CO2*100)

x_H2O = mole_H2O/m1;
printf("percentage of H2O by mole = %f\n\n",x_H2O*100)

x_SO2 = mole_SO2/m1;
printf("percentage of SO2 by mole = %f\n\n",x_SO2*100)
