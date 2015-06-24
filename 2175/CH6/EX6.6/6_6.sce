clc;
m_H=2;
m_CO=28;
xH=0.8;
xCO=0.2;

m_=xH*m_H+xCO*m_CO;

x=(xH-0.5)*9;
disp("mass of mixture removed is:");
disp("kg",x)

y=28/7.2*x;
disp("mass of CO added");
disp("kg",y)
