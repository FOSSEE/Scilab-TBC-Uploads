clear;
clc;
disp(' Example 14.7');

// aim : To determine 
//  the power required to drive the vane pump

// given values
m_dot = 1;// air capacity, [kg/s]
rp = 2;// pressure ratio
P1 = 1*10^5;// intake pressure, [N/m^2]
T1 = 273+70;// intake temperature, [K]
Gama = 1.4;// heat capacity ratio
rv = .7;// volume ratio

// solution
V1 = .995;// intake pressure(as given previous question),[m^3/s] 
// using P1*V1^Gama=P2*V2^Gama, so
P2 = P1*(1/rv)^Gama;// pressure, [N/m^2]
V2 = rv*V1;// volume,[m^3/s]
P3 = rp*P1;// final pressure, [N/m^2]
P = Gama/(Gama-1)*P1*V1*((P2/P1)^((Gama-1)/Gama)-1)+V2*(P3-P2);// power required,[W]
mprintf('\n The power required to drive the vane pump is  =  %f  kW\n',P*10^-3);

//  End
