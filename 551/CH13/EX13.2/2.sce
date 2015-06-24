clc
cv=0.721; //kJ/kg K
cp=1.008; //kJ/kg K
m=0.5; //kg
n_th=0.5;
Q_isothermal=40; //kJ
p1=7*10^5; //Pa
V1=0.12; //m^3
R=287; //J/kg K

disp("(i) The maximum and minimum temperatures")
T1=p1*V1/m/R;
disp("Maximun temperature =")
disp(T1)
disp("K")

T2=(1-n_th)*T1;
disp("Minimum temperature =")
disp(T2)
disp("K")


disp("(ii) The volume at the end of isothermal expansion =")
V2=V1*%e^(Q_isothermal*10^3/m/R/T1);
disp(V2)
disp("m^3")


disp("(iii) The heat transfer for each of the four processes")

Q1=Q_isothermal;
disp("Isothermal expansion")
disp(Q1)
disp("kJ")

Q2=0;
disp("Adiabatic reversible expansion")
disp(Q2)

Q3=-Q_isothermal;
disp("Isothermal compression")
disp(Q3)

Q4=0;
disp("Adiabatic reversible compression")
disp(Q4)