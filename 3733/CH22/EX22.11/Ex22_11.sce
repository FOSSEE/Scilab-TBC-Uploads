// Example 22_11
clc;funcprot(0);
//Given data
P=27000;// kW
p_1=60;// bar
T_1=450;// °C
p_v=707.5;// The condenser vaccum in mm of Hg
p_2=3;//bar
n_t=87;// The turbine efficiency
n_b=90;// The boiler efficiency in %
n_a=95;//The alternator efficiency in %
n_m=98;//The mechanical efficiency in %
p_b=760;// cm of Hg

//Calculation
p_3=((p_b-p_v)/p_b)*1.013;//The condenser pressure bar
// From h-s chart:
h_1=3296;// kJ/kg
h_2a=2606;// kJ/kg
h_3a=2163;// kJ/kg
h_2=h_1-((n_t/100)*(h_1-h_2a));// kJ/kg
h_3=h_2-((n_t/100)*(h_2-h_3a));// kJ/kg
//From steam tables
h_f4=162;// kJ/kg (at 0.07 bar)
h_f5=558;// kJ/kg (at 3 bar)
//Assume m=y(1)
function[X]=bled(y)
    X(1)=((1-y(1))*(h_f5-h_f4))-(y(1)*(h_2-h_f5));
endfunction
y=[0.1]
z=fsolve(y,bled);
m=z(1);// kg/kg of steam generated
W=(h_1-h_2)+((1-m)*(h_2-h_3));//Work developed per kg of steam in kJ/kg 
W_act=(P/((n_a/100)*(n_m/100)));//Actual work developed by the turbine kW
m_s=(W_act/W)*(3600/1000);// Steam generated per second in tons/hr
P_p=P*(10/100);// Pump power in kW
P_net=P*(1-(10/100));// Net power available in kW
Q_s=((m_s*1000*(h_1-h_f5))/((n_b/100)*3600));// Heat supplied in the boiler in kW
n_o=(P_net/Q_s)*100;// The overall efficiency of the plant in %
printf('\n(a)The steam bled per kg of steam supplied to the turbine=%0.3f kg/kg of steam generated \n(b)Steam generated per hour=%0.1f tons/hr \n(c)The overall efficiency of the plant=%0.1f percentage',m,m_s,n_o);
// The answer vary due to round off error
