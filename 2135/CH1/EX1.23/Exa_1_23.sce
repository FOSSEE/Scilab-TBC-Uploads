//Exa 1.23
clc;
clear;
close;
format('v',8);

//Given Data :
Rdegree=8314.3;//Universal Gas Constant
r=12;//meter
Patm=75;//cm of Hg
Patm=Patm/76*1.01325*10^5;//N/m^2
V=4/3*%pi*r^3;//m^3
M_air=28.97;
M_H2=2
Tair=18+273;//K
g=9.81;//gravity constant
Rair=Rdegree/M_air;//Nm/KgK
RH2=Rdegree/M_H2;//Nm/KgK
//p*V=m*R*T
m_air=Patm*V/Rair/Tair;//Kg
disp(m_air,"Mass of air in kg : ");
n_air=m_air/M_air;//moles
disp(n_air,"No. of moles : ");
m_H2=n_air*M_H2;//Kg
disp(m_H2,"Mass of H2 in kg : ");
Load=g*(m_air-m_H2);//N
disp(Load,"Load balloon can lift in N ; ");
