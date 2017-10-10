// Example 14_6
clc;funcprot(0);
// Given data
// Loop A
// Station 1A
// Compressor A in
x_1A=1.00;// The dryness fraction
T_1A=-20.0;// °C 
h_1A=242.05;// kJ/kg
s_1A=0.95927;// kJ/kg.K
p_1A=244.8;// kPa
// Station 2sA
// Compressor A out
p_2A=1500;// kPa
s_2A=s_1A;// kJ/kg.K
h_2sA=289.08;// kJ/kg
T_2sA=71.07;// °C 
// Station 3A
// Condenser A out
x_3A=0.00;// The dryness fraction
T_3A=25.0;// °C 
h_3A=74.91;// kJ/kg
// Station 4hA
// Expansion A out
h_4hA=h_3A;// kJ/kg
// Loop B
// Station 1B
// Compressor B in
x_1B=1.00;// The dryness fraction
T_1B=-50.0;// °C
h_1B=228.51;// kJ/kg
s_1B=1.02512;// kJ/kg.K
p_1B=63.139;// kPa
// Station 2sB
// Compressor B out
p_2B=300;// kPa
s_2B=s_1B;// kJ/kg.K
h_2sB=264.05;// kJ/kg
T_2sB=15.0;// °C
// Station 3B
// Condenser B out
x_3B=0.00;// The dryness fraction
T_3B=-20.0;// °C
h_3B=21.73;// kJ/kg
// Station 4hB
// Expansion B out
h_4hB=h_3B;// kJ/kg
Q_L=40.0;// tons of refrigeration
n_s=80/100;// The isentropic efficiencies of both compressors

// (a)
m_B=(Q_L*210*1/60)/(h_1B-h_4hB);// kg/s
h_2B=((h_2sB-h_1B)/n_s)+h_1B;// kJ/kg
m_A=m_B*((h_2B-h_3B)/(h_1A-h_4hA));// kg/s
// (b)
COP_dc=(m_B*(h_1B-h_4hB))/(((m_A*(h_2sA-h_1A))/n_s)+((m_B*(h_2sB-h_1B))/n_s));// The coeeficient of performance
// (c)
PR_cA=p_2A/p_1A;// The compressor pressure ratio
PR_cB=p_2B/p_1B;// The compressor pressure ratio
printf("\n(a)The mass flow rate of refrigerant in loops A and B,m_A=%1.2f kg/s & m_B=%0.3f kg/s \n(b)The system’s coefficient of performance,COP_dual cascade=%1.2f \n(c)The pressure ratios across each of the compressors,PR_compressorA=%1.2f & PR_compressorA=%1.2f",m_A,m_B,COP_dc,PR_cA,PR_cB);
