clear;
clc;
disp('Example 13.3');

// aim : To determine
// (a) the power output of the turbine
// (b) the diagram efficiency

// given values
U = 150;// mean blade speed, [m/s]
Cai1 = 675;// nozzle speed, [m/s]
na = 20;// nozzle angle, [degree]
m_dot = 4.5;// steam flow rate, [kg/s]

// solution
// from Fig. 13.15(diagram 13.3)
Cw1 = 915;// [m/s]
Cw2 = 280;// [m/s]

// (a)
P = m_dot*U*(Cw1+Cw2);// power of turbine,[W]
mprintf('\n (a) The power of turbine is  =  %f kW\n',P*10^-3);

// (b)
De = 2*U*(Cw1+Cw2)/Cai1^2;// diagram efficiency
mprintf('\n (b) The diagram efficiency is  =  %f percent\n',De*100);

//  End
