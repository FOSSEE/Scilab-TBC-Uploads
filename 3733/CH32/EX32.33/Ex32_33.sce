// Example 32_33
clc;funcprot(0);
//Given data
L_cap=100;// MW
// n=0.4*L;(given)
L=[20 80 30];// MW
T=[0 8 16 24];// Time in hours
CV=35;// MJ/kg
C=2;// Coal cost in Rs./kg
Sc=2.5;// Rs./kWh
n_com=95/100;// Combustion efficiency

// Calculation
E=(L(1)*(T(2)-T(1)))+(L(2)*(T(3)-T(2)))+(L(3)*(T(4)-T(3)));// Total energy consumed a day in MWh
L_a=E/24;// Average load of the plant in MW
L_max=80;// MW
LF=L_a/L_max;
CF=L_a/L_cap;
// Outputs
O_1=(L(1)*(T(2)-T(1)));// MWh
n_1=0.4*(L(1)/100);
I_1=O_1/n_1;// MWh
O_2=(L(2)*(T(3)-T(2)));// MWh
n_2=0.4*(L(2)/100);
I_2=O_2/n_2;// MWh
O_3=(L(3)*(T(4)-T(3)));// MWh
n_3=0.4*(L(3)/100);
I_3=O_3/n_3;// MWh
I=(I_1+I_2+I_3)*10^3;// Total input in MWh
m_f=(I*3600)/(CV*10^3*n_com*24);//  kg/hr
m_f=(m_f*24)/10^3;// tons/day
Cf=m_f*10^3*C;// The cost of fuel in Rs./day
Mg=E*10^3*Sc;// The money gained by selling the energy generated in rupees
Pr=(Mg-Cf);// Profit gained during the day in rupees/day
n_o=(E/(I/10^3))*100;// The overall efficiency of the plant in %
printf('\n(a)The load factor of the plant=%0.2f \n   The capacity factor of the plant=%0.3f \n(b)The fuel consumed in tonnes per day=%0.1f tons/day \n(c)Profit gained by the plant=%0.0e rupees/day \n(d)The overall efficiency of the plant=%0.2f percentage',LF,CF,m_f,Pr,n_o);
// The answer provided in the textbook is wrong
