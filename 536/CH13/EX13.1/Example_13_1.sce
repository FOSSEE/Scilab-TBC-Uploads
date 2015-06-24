clc;
clear;

printf("\n Example 13.1\n");

P=101.3e3;
T=297; 
R=8314; //gas constant
RH=60; //Relative humidity
p_b1=12.2e3;//Vapor pressure at 297 K
p_b2=6e3; //Vapor pressure at 283 K
M_w=78; //molecular weight of benzene
M_a=28; //Mass of nitrogen 

//From the definition of percentage relative humidity (RH)
P_w=(p_b1)*(RH/100);
//In the benzene -nitrogen mixture:
m_b=P_w*M_w/(R*T);//mass of benzene
m_n=(P-P_w)*M_a/(R*T);//mass of nitrogen
H=m_b/m_n; //Humidity at 297 K

//In order to recover 80 per cent of the benzene, the humidity must be reduced to 20 per cent of the initial value
H_o=H*.20;
//Thus in equation 13.2
P_r=p_b2+(p_b2/M_a*M_w)/H_o;
printf("\n The required pressure is = %.0f kN/m^2",P_r*1e-3);