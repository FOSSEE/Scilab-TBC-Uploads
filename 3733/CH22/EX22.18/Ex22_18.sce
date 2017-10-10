// Example 22_18
clc;funcprot(0);
//Given data
T_1=500;// °C
p_1=40;// bar
p_2=10;// bar
p_3=0.04;// bar
m_b=50;// The boiler generation rate in tons/hour
n_m=85/100;// Mechanical efficiency
n_g=95/100;// Electrical generation efficiency

// Calculation
// From h-s chart:
h_1=3400;// kJ/kg
h_2=3050;// kJ/kg
h_3=2150;// kJ/kg
// From steam tables
h_f4=121.4;// kJ/kg(at 0.04 bar)
h_f5=762.6;// kJ/kg(at 10 bar)
h_f6=h_f5;// kJ/kg
//Assume m_1=y(1);h_fm=y(2)
function[X]=mass(y)
    X(1)=((y(1)*h_f6)+((1-y(1))*h_f4))-(y(1)*y(2));
    X(2)=(y(1)*(h_2-h_f5))-(1*(h_f5-y(2)));
endfunction
y=[0.1 100];
z=fsolve(y,mass);
m=z(1);// kg/kg of steam generated
h_fm=z(2);// kJ/kg
W=(h_1-h_2)+((1-m)*(h_2-h_3));// kJ/kg 
m_b=m*100;// Bled steam in %
Q_s=h_1-h_f5;// Heat supplied per kg of steam in kJ/kg
n=(W/Q_s)*100;// Efficiency in %
P=(((m_b*10^3)*W*n_m*n_g)/3600)/1000;// Power developed in MW
printf('\nThe percentage of bled steam=%0.0f percentage \nThe thermal efficiency of the plant=%0.1f percentage \nThe generating capacity of the plant=%0.1f MW',m_b,n,P);
// The answer provided in the textbook is wrong

