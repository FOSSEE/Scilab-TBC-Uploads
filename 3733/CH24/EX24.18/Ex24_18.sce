// Example 24_18
clc;funcprot(0);
//Given data 
P=200;// Power plant capacity in MW
T_6=1000;// K
T_8=900;// K
p_1=1;// bar
T_1=27+273;// K
p_r=5;// bar
e=0.7;// The effectiveness of heat exchanger
n_c=1;// Isentropic efficiency of  both compressors
n_t=0.9;// Efficiency of both turbines
n_com=0.95;// Combustion efficiency
n_m=0.92;// Mechanical efficiency of compressor and generator shafts
CV=40000;// kJ/kg
C_p=1;// kJ/kg.°C
r=1.4;// Specific heat ratio for air and gases

//Calculation
p_2=p_1*p_r;// bar
p_i=sqrt(p_1*p_2);// bar
T_7a=T_6*(p_1/p_2)^((r-1)/r);// K
n_t2=n_t;
T_7=T_6-(n_t2*(T_6-T_7a));// K
W_g=C_p*(T_6-T_7)*n_m;//Work done per kg of air in generator-turbine in kJ/kg
m_2=CV/W_g;// The mass of exhaust gases in kg/sec
T_2=T_1*(p_i)^((r-1)/r);// K
W_c=2*C_p*(T_2-T_1);//Work done per kg of air in both compressors in kJ/kg
T_4=T_2;// K
// Assume m_1=y(1);T_5=y(2)
function[X]=massflow(y);
    X(1)=(m_2*C_p*(y(2)-T_8))-(y(1)*C_p*(T_8-T_4));
    X(2)=((y(1)*C_p*(T_8-T_4))/(m_2*C_p*(y(2)-T_4)))-(e);
endfunction
y=[100 1000];
z=fsolve(y,massflow);
T_5=z(2);// K
m_1=z(1);// kg/sec
T_9a=T_8/(p_i)^((r-1)/r);// K
n_t1=n_t;
T_9=T_8-(n_t1*(T_8-T_9a));// K
m_c1=(((m_1*(T_8-T_9))/((T_2-T_1)*n_m))-m_1)/2;// Air taken from atmosphere in kg/sec
m_c2=m_c1+m_1;// kg/sec
//Assume m_f=y(1)
function[X]=massoffuel(z);
    X(1)=((m_c2+z(1))*C_p*(T_5-T_4))/(CV*n_com)-z(1);
endfunction
z=[10];
y=fsolve(z,massoffuel);
m_f=y(1);// Mass of fuel used per second
n_o=((P*10^3)/(CV*m_f))*100;// Over all efficiency of the plant in %
Ctc=(m_1*C_p*(T_8-T_9))/1000;// Compressor-turbine capacity in MW
printf('\n(a)Air taken from atmosphere per second=%0.0f kg/sec \n(b)Fuel required per second=%0.2f kg/sec \n(c)Over all efficiency of the plant=%0.1f percentage \n(d) Compressor-turbine capacity=%0.0f kW',m_c1,m_f,n_o,Ctc*1000);
// The answer vary due to round off error
