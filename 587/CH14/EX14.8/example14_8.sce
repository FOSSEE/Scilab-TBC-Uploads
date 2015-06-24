clear;
clc;

//Example14.8[Venting of Helium into the Atmosphere by Diffusion]
//Given:-
D_AB=7.2*10^(-5);//Diffusion coefficient of air in helium[m^2/s]
M_He=4,M_air=29;//Molar masses of helium and air[kg/kmol]
D=0.005;//Internal diameter of tube[m]
L=15;//Length of tube[m]
R1=8.314;//Universal Gas Constant[kPa.m^3/kmol.K]
R2=2.0769;//Universal Gas Constant[kPa.m^3/kg.K]
T=298;///Ambient temperature[K]
//Solution:-
A=%pi*(D^2)/4;//Flow area[m^2]
P_He0=1,P_HeL=0;//Pressure of helium at x=0 i.e. bottom of tube and at x=L i.e. at the top of the tube [atm]
N_He=D_AB*A*(P_He0-P_HeL)*(101.3)/(R1*T*L);
disp("kmol/s",N_He,"The molar flow rate of Helium is")
m_He=N_He*M_He;
disp("kg/s",m_He,"Mass flow rate of helium is")
N_air=-N_He;//Equimolar counter diffusion process
m_air=N_air*M_air;
disp("kg/s",m_air,"The flow rate of air into the pipeline is")
w_air=m_air/(m_air+m_He);
disp("which is negligible",w_air,"Mass fraction of air in the helium pipeline is")
m_net=m_He+m_air;//[kg/s]
//Taking density of mixture at x=0 to be the density of helium as the mass fraction of air at the bottom is very small
rho=P_He0*101.325/(R2*T);//[kg/m^3]
V=m_net/(rho*A);//[m/s]
disp("m/s",V,"The average flow velocity at the bottom of the tube is")
