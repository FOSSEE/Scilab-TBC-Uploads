// Example 22_27
clc;funcprot(0);
//Given data
T_1=600;// °C
p_1=150;// bar
T_3=600;// °C
p_3=40;// bar
p_4=5;// bar
p_5=0.1;// bar

//Calculation
//From h-s chart:
h_1=3570;// kJ/kg
h_2=3280;// kJ/kg
h_3=3650;// kJ/kg
h_4=2920;// kJ/kg
h_5=2280;// kJ/kg
// From steam tables
h_f1=1610;// kJ/kg(at 150 bar)
h_f2=1087;// kJ/kg(at 40 bar)
h_f4=640;// kJ/kg(at 5 bar)
h_f5=192;// kJ/kg(at 0.1 bar)
function[X]=mass(y)
    X(1)= (y(1)*(h_2-h_f2))-((1-y(1))*(h_f2-h_f4));
    X(2)=(y(2)*(h_4-h_f4))-((1-y(1)-y(2))*(h_f4-h_f5));
endfunction
y=[0.1 0.1];
z=fsolve(y,mass);
m_1=z(1);// kg/kg of steam supplied by the boiler
m_2=z(2);// kg/kg of steam supplied by the boiler
W_t=(h_1-h_2)+((1-m_1)*(h_3-h_4))+((1-m_1-m_2)*(h_4-h_5));// Total workdone per kg of steam supplied by the boiler in kJ/kg
v_w1=1/1000;// m^3/kg
v_w2=v_w1;// m^3/kg
v_w3=v_w1;// m^3/kg
W_p1=(v_w1*(1-m_1-m_2)*(p_4-p_5*10^5))/1000;// kJ/kg
W_p2=(v_w2*(1-m_1)*(p_1-p_4)*10^5)/1000;// kJ/kg
W_p3=(v_w3*(m_1)*(p_1-p_3)*10^5)/1000;// kJ/kg
W_pt=W_p1+W_p2+W_p3;// kJ/kg
W_n=W_t-W_pt;// Net work done by the turbine per kg of steam supplied by the boiler in kJ
Q_f=((1-m_1)*h_f1)+(m_1*h_f1);// Heat of feed water entering the boiler in kJ
Q_s1=h_1-Q_f;// Heat supplied by the boiler per kg of steam in kJ
Q_s2=(1-m_1)*(h_3-h_2);// Heat supplied in the reheater in kJ/kg
Q_st=Q_s1+Q_s2;// Total heat supplied in kJ/kg
n=(W_n/Q_st)*100;// Thermal efficiency in %
printf('\nm_1=%0.2f kg/kg of steam \nm_2=%0.3f kg/kg of steam \nThermal efficiency=%0.1f percentage',m_1,m_2,n);
