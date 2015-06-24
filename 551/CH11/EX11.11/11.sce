clc

C=80;

//Analysis of gas entering the economiser
CO2_1=8.3;
CO_1=0;
O2_1=11.4;
N2_1=80.3;

//Analysis of gas leaving the economiser
CO2_2=7.9;
CO_2=0;
O2_2=11.5;
N2_2=80.6;

A1=N2_1*C/33/(CO2_1 + CO_1); //Air supplied on the basis of conditions at entry to the economiser

A2=N2_2*C/33/(CO2_2 + CO_2); //Air applied on the basis of conditions at exit

leakage=A2-A1; //Air leakage
disp("Air leakege =")
disp(leakage)
disp("kg of air per kg of fuel")

W_fuel=0.85; //kg; Weight of fuel passing up the chimney

c=1.05;
T2=410;
T1=0;

W=A1+W_fuel; //Total weight of products
Q1=W*c*(T2-T1); //Heat in flue gases per kg of coal
Q2=leakage*1.005*(20-0); //Heat in leakage air

t=(Q1+Q2)/(1.005*leakage + W*1.05);

dT=T2-t;
disp("Fall in temperature as a result of the air leakage into the economiser")
disp(dT)
disp("°C")
