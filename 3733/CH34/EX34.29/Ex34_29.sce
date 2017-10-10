// Example 34_29
clc;funcprot(0);
//Given data
P=50;// MW
F_l=40/100;// Load factor
CC_s=15000;// Initial cost of steam plant in Rs./kW
Mc_s=20;// Maintainence cost in paise/kWh
n_os=25/100;// The over all efficiency of the steam plant
CV=25000;// kJ/kg
CC_h=30000;// Capital cost of hydel plant in Rs./kW
Rc=5;// Running cost in paise/kWh
ID_s=12/100;// Interest and depriciation for steam plant
ID_h=9/100;// Interest and depriciation for hydel plant

//Calculation
E=P*10^3*F_l*8760;// Energy required per year in kWh/year
//(a)Steam plant
ID_s=P*10^3*CC_s*ID_s;//Interest and depriciation in Rs./year
Mc_s=(Mc_s/100)*E;//Maintainence cost in Rs./year
m_c=E/(10^3*CV*n_os)*3600;// The mass of coal in tons/year
//(b)Hydel plant
ID_h=P*10^3*CC_h*ID_h;//Interest and depriciation in Rs./year
Rc_h=(Rc/100)*E;// Running cost in Rs./year
Tc_h=ID_h+Rc_h;// Total cost of hydel plant in rupees
// Tc_s=ID_s+Mc_s+(m_c*C); where C is the cost of coal
function[X]=costofcoal(y)
    X(1)=(ID_s+Mc_s+(m_c*y(1)))-Tc_h;
endfunction
y=[0.1];
z=fsolve(y,costofcoal);
C=z(1);// Rs./ton
printf('\nThe cost of coal=Rs.%0.0f/ton',C);
