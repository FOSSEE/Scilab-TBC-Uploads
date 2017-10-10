// Example 10_12
clc;funcprot(0);
// Given data
Q_H=1.00*10^6;// kJ/s
T_0=5.00;// ºC
T_H=700;// ºC
p_0=0.101;// MPa
Q_L=7.00*10^5;// kJ/s
T_L=40.0;// ºC
W_net=3.00*10^5;// kJ/s

// Calculation
// (a)
n=(W_net/Q_H)*100;// %
// (b)
A_bin=(1-((T_0+273.15)/(T_H+273.15)))*Q_H;// kJ/s
// (c)
A_cin=(1-((T_0+273.15)/(T_L+273.15)))*Q_L;// kJ/s
// (d)
E_HE=(W_net/(A_bin-A_cin))*100;// %
printf("\n(a)The first law thermal efficiency of the power plant,n=%2.1f percentage \n(b)The rate at which available energy enters the boiler,A_boiler input=%1.2e kJ/s \n(c)The rate at which available energy enters the condenser,A_boiler output=%0.2e kJ/s \n(d)The second law efficiency of the power plant,E_He=%2.1f percentage",n,A_bin,A_cin,E_HE);
