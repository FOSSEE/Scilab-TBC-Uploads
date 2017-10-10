// Example 25_5
clc;funcprot(0);
//Given data 
W_t=200*10^3;// kW
T_1=300;// K
p_1=1;// bar
T_3=800+273;// K
T_5=800+273;// K
T_6=200;// °C
p_r=8;// Pressure ratio
p_7=50;// bar
T_7=600+273;// K
n_c=100/100;// Isentropic efficiency of compressor
n_t=100/100;// Isentropic efficiency of both turbines
p_8=0.05;// bar
C_p=1;// kJ/kg
C_pa=C_p;
C_pg=C_p;
r=1.4;// Specific heat ratio 
CV=42*10^3;// kJ/kg

// Calculation
p_2=p_1*p_r;// bar
T_2=T_1*(p_r)^((r-1)/r);// K
T_4=T_3/(p_r)^((r-1)/r);// K
function[X]=mass(y);
    X(1)=(y(2)*CV)-((y(1)+y(2))*C_pg*(T_3-T_2));
    X(2)=(y(5))-(((y(1)+y(2))*C_pg*(T_3-T_4))-(y(1)*C_pa*(T_2-T_1)));
    X(3)=(y(3)*CV)-((y(1)+y(2)+y(3))*C_pg*(T_5-T_4));
    // From h-s chart:
    h_7=3620;// kJ/kg
    h_9=32.6;// kJ/kg
    h_8=2220;// kJ/kg
    T_5=800;// °C
    X(4)=(y(4)*(h_7-h_9))-((y(1)+y(2)+y(3))*C_pg*(T_5-T_6));
    X(5)=y(6)-(y(4)*(h_7-h_8));
    X(6)=(y(5)+y(6))-W_t;
endfunction
y=[100 1 1 1 100000 10000];
z=fsolve(y,mass);
m_a1=z(1);// kg/sec
m_f1=z(2);// kg/sec
m_f2=z(3);// kg/sec
m_s=z(4);// kg/sec
W_g=z(5);// kW
W_s=z(6);// kW
m_f=m_f1+m_f2;// kg/sec
R_a=m_a1/m_s;// Ratio of air supplied
//(a)
n_o=((W_t)/(m_f*CV))*100;
//(b)
n_g=((W_g)/(m_f1*CV))*100;
//(a)
n_s=((W_s)/(m_f2*CV))*100;
printf('\nOverall efficiency of the plant=%0.0f percentage \nThermal efficiency of gas turbine plant=%0.0f percentage \nThermal efficiency of steam turbine plant=%0.0f percentage \nRatio of air supplied=%0.2f',n_o,n_g,n_s,R_a);
