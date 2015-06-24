clc;
m_C=12;
m_O2=32;
x_C=0.9;
O_req_CO2=x_C*([m_O2*1]/[m_C*1]);
CO2_prod=x_C*([m_C*1]+[m_O2*1])/[m_C*1];
//HYDROGEN
m_H2=2;
x_H=0.03;

O_req_H2O=x_H*[m_O2/2/2];
steam_prod=x_H*{0.5*[(m_H2)+(m_O2)/2]};
//SULPHUR
m_S=32;
x_S=0.005;
O_req_SO2=x_S*(m_O2/32);
SO2_prod=2*x_S;

O_req=O_req_CO2+O_req_H2O+O_req_SO2;
%O=23.3;
A=O_req*100/%O;
disp("A/F ratio is:");
disp(A);

//part (ii)
actual_A=A*(1+0.2);
%N=076.7;
m_N2=28;
N_supp=actual_A*%N/100;
O_supp=actual_A*%O/100;
x_N=0.01;
N2=N_supp+x_N;
O2=O_supp-O_req;
disp("actual A/F ratio is");
disp(actual_A);

m_CO2=m_C+m_O2;
m_H2O=m_H2+0.5*m_O2;
m_SO2=m_S+m_O2;

ni_CO2=CO2_prod/m_CO2;
ni_H2O=steam_prod/m_H2O;
ni_SO2=SO2_prod/m_SO2;
ni_O2=O2/m_O2;
ni_N2=N2/m_N2;

n_wet=ni_CO2+ni_H2O+ni_SO2+ni_O2+ni_N2;
n_dry=ni_CO2+ni_SO2+ni_O2+ni_N2;
disp(O_supp)
CO2_wet=ni_CO2/n_wet;
H2O_wet=ni_H2O/n_wet;
SO2_wet=ni_SO2/n_wet;
O2_wet=ni_O2/n_wet;
N2_wet=ni_N2/n_wet;

disp("wet analysis of CO2,H2O,SO2,O2,N2");
disp(N2_wet*100,O2_wet*100,SO2_wet*100,H2O_wet*100,CO2_wet*100);
