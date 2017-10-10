// Example 14_7
clc;funcprot(0);
// Given data
// Loop A
// Station 1A
// Compressor A inlet
p_1A=500;// kPa
h_1A=265.60;// kJ/kg
s_1A=0.9486;// kJ/kg.K
// Station 2sA
// Compressor A outlet
p_2sA=1600;// kPa
s_2A=s_1A;// kJ/kg.K
h_2A=256.60;// kJ/kg
// Station 3A
// Condenser A outlet
x_3A=0.00;// The quality of steam
p_3A=1600;// kPa
h_3A=134.02;// kJ/kg
// Station 4hA
// Expansion valve A outlet
h_4hA=h_3A;// kJ/kg
// Loop B
// Station 1B
// Compressor B inlet
x_1B=1.00;// The quality of steam
p_1B=100;// kPa
h_1B=231.35;// kJ/kg
s_1B=0.9395;// kJ/kg.K

// Station 2sB
// Compressor B outlet
p_2B=500;// kPa
s_2sB=s_1B;// kJ/kg.K
h_2sB=264.25;// kJ/kg
T_2sB=15.0;// °C
// Station 3B
// Condenser B outlet
x_3B=0.00;// The quality of steam
p_3B=500;// kPa
h_3B=71.33;// kJ/kg
// Station 4hB
// Expansion B outlet
h_4hB=h_3B;// kJ/kg
Q_L=10.0;// tons
n_s_c_A=80/100;// The isentropic efficiency of compressor A
n_s_c_B=80/100;// The isentropic efficiency of compressor B

// Calculation
// (a)
h_2B=((h_2sB-h_1B)/n_s_c_B)+h_1B;// kJ/kg
h_f_500kPa=71.33;// kJ/kg
h_f_1600kPa=134.02;// kJ/kg
h_fg_500kPa=184.74;// kJ/kg
x_flash=((h_f_1600kPa-h_f_500kPa)/h_fg_500kPa)*100;// The quality of the vapor exiting the flash chamber
h_gflash=252.07;// kJ/kg
h_1A=((x_flash/100)*h_gflash)+((1-(x_flash/100))*h_2B);// kJ/kg
m_B=(Q_L*210*1/60)/(h_1B-h_4hB);// kg/s
m_A=m_B/(1-(x_flash/100));// kg/s
// (b)
h_2sA=292.33;// kJ/kg
COP_ds=[(1-(x_flash/100))*(h_1B-h_4hB)]/[((h_2sA-h_1A)/n_s_c_A)+((1-(x_flash/100))*((h_2B-h_1B)/n_s_c_B))];// The system’s coefficient of performance.
// (c)
W_comp=m_A*[((h_2sA-h_1A)/n_s_c_A)+((1-(x_flash/100))*((h_2B-h_1B)/n_s_c_B))];// The total compressor power in kW
printf("\n(a)The mass flow rate of the two refrigerants,m_A=%0.3f kg/s & m_B=%0.3f kg/s \n(b)The system’s coefficient of performance,COP_dual stage=%1.2f \n(c)The total power required by the compressors,W_compressors=%2.1f kW",m_A,m_B,COP_ds,W_comp);
