// Example 22_23
clc;funcprot(0);
//Given data
P=120;// MW
p_1=86;// bar
p_2=7;// bar
p_3=0.35;// bar
T_1=350;// °C

//Calculation
//From h-s chart:
h_1=2980;// kJ/kg
h_2=2520;// kJ/kg
h_3=3170;// kJ/kg
h_4=2550;// kJ/kg
// From steam tables
h_f1=304.3;// kJ/kg(liquid heat at 0.35 bar)
T_s1=72.7;// °C
h_f2=697;// kJ/kg(liquid heat at 7 bar)
T_s2=165;// °C
h_f4=h_f1;// kJ/kg
function[X]=mass(y)
    X(1)= (y(1)*(h_2-h_f2))-((1-y(1))*(h_f2-h_f4));
endfunction
y=[0.1];
z=fsolve(y,mass);
m=z(1);// tons/hr
S=(1/m);// The ratio of steam bled to steam generated
m_s=((P*10^3)/((h_1-h_2)+((1-m)*(h_3-h_4))))*(3600/1000);// kg/sec
n_th=(((h_1-h_2)+((1-m)*(h_3-h_4)))/((h_1-h_f1)+((1-m)*(h_3-h_2))))*100;
printf('\n(a)The ratio of steam bled to steam generated=%0.2f \n(b)The boiler generating capacity=%0.1f tons/hr \n(c)The thermal efficiency of the cycle=%0.1f percentage',S,m_s,n_th);
// The answer vary due to round off error
