// Example 24_36
clc;funcprot(0);
//Given data 
P=25;// MW
p_r=8;// Pressure ratio
T_1=300;// K
p_1=1;// bar
T_8=700;// K
AF_1=80;// Air fuel ratio
AF_2=70;// Air fuel ratio
e=0.7;// Effectiveness of heat exchanger 
CV=40*10^3;// kJ/kg
C_pa=1;// kJ/kg.K
C_pg=1;// kJ/kg.K
r=1.4;// Specific heat ratio for air and gases

//Calculation
p_2=p_1*p_r;// bar
T_2=T_1*(p_r)^((r-1)/r);// K
function[Y]=temperature(x)
    Y(1)=(e*(x(1)-T_2))-(x(1)-T_8);
endfunction
x=[100];
T=fsolve(x,temperature);
T_7=T(1);// K
T_2a=(T_7-T_8)+T_2;// K
//Assume m_f1=y(1);T_3=y(2);m_f2=y(3);T_5=y(4);T_6=y(5);T_4=y(6)
function[X]=massoffuel(y)
    X(1)=(((80*y(1))+y(1))*C_pg*(y(2)-T_2a))-(y(1)*CV);
    X(2)=(((70*y(3))+y(3))*C_pg*(y(4)-T_2a))-(y(3)*CV);
    X(3)=(((70*y(3))+y(3))*C_pg*(y(4)-y(5)))-(P*10^3);
    X(4)=y(5)-((y(4))/((p_r)^((r-1)/r)));
    X(5)=(((80*y(1))+y(1))*((y(2))-y(6)))-(((80*y(1))+(70*y(3)))*(T_2-T_1));
    X(6)=y(6)-((y(2))/((p_r)^((r-1)/r)));
endfunction
y=[0.1 1000 0.1 1000 100 100 ];
z=fsolve(y,massoffuel);
m_f1=z(1);// kg/sec
m_f2=z(3);// kg/sec
T_3=z(2);// K
T_4=z(6);// K
T_5=z(4);// K
T_6=z(5);// K
m_f=(m_f1+m_f2)*3600;// Total mass of fuel consumed per hour in kg/hr
m_a=((m_f1*AF_1)+(m_f2*AF_2))*60;// Mass of air compressed per minute in kg/hr
Sfc=(m_f)/(P*10^3);// Specific fuel consumption in kg/kW-hr
n_th=((P*10^3)/((m_f1+m_f2)*CV))*100;// Thermal efficiency in %
printf('\n(a)Total mass of fuel consumed per hour=%0.0f kg/hr \n(b)Mass of air compressed per minute=%0.0f kg/hr \n(c)Specific fuel consumption=%0.3f kg/kW-hr \n(d)Thermal efficiency=%0.0f percentage',m_f,m_a,Sfc,n_th);
// The answers provided in the textbook is wrong
