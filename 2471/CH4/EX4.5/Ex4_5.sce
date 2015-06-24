clear ;
clc;
// Example 4.5
printf('Example 4.5\n\n');
printf('Page No. 95\n\n');

// given
m_h = 1.05;// Mass flow rate of hot liquid in kg/s
Thi = 130;// Inlet Temperature of hot liquid in degree celcius
Tho = 30;// Outlet Temperature of hot fluid in degree celcius
Cph =  2.45*10^3;// Specific heat capacity of hot liquid in J/kg-K

m_c = 4.10;// Mass flow rate of cold liquid in kg/s
Tci =  20;// Inlet Temperature of cold liquid in degree celcius
Cpc =  4.18*10^3;// Specific heat capacity of cold liquid in J/kg-K

A = 6.8;// Area of heat exchanger in m^2
Q = m_h*Cph*(Thi-Tho);// in Watts

//From heat balance
// m_c*Cpc*(Tci-Tco)= m_h*Cph*(Thi-Tho)= UAlTm = Q
Tco = ((Q/(m_c*Cpc))+Tci);
printf(' The Outlet Temperature of cold fluid is %.0f degree celcius\n',Tco)
// As counter flow  heat exchanger 
T1 = Thi-Tco;
T2 = Tho-Tci;
Tm = ((T1-T2)/log(T1/T2));

U = (Q/(A*Tm));
printf('The overall heat transfer coefficient is %.0f W/sq.m K \n',U)// Deviation in answer due to direct substitution


