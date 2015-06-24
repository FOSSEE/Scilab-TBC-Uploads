clear;
clc;
disp('Example 9.3');

//  aim : To determine the
//  (a) heat loss per hour
//   (b) interface temperature og lagging

// Given values
r1 = 50; // radious of steam main,[mm]
r2 = 90;// radious with first lagging,[mm]
r3 = 115;// outside radious os steam main with lagging,[mm]
k1 = .07;// thermal conductivity of 1st lagging,[W/m/K]
k2 = .1;// thermal conductivity of 2nd lagging, [W/m/K]
P = 1.7;// steam pressure,[MN/m^2]
t_superheat = 30;// superheat of steam, [K]
t3 = 24;// outside temperature of the lagging,[C]
L = 20;// length of the steam main,[m]

//  solution
//  (a)
//  using steam table saturation temperature of steam at 1.7 MN/m^2 is
t_sat = 204.3;// [C]
// hence
t1 = t_sat+t_superheat;// temperature of steam,[C]

Q_dot = 2*%pi*L*(t1-t3)/(log(r2/r1)/k1+log(r3/r2)/k2);// heat loss,[W]
//  heat loss in hour is
Q = Q_dot*3600*10^-3;// [kJ]

mprintf('\n (a) The heat lost per hour is  =  %f kJ\n',Q);

// (b)
//  using Q_dot=2*%pi*k1*(t1-t1)/log(r2/r1) 
t2 = t1-Q_dot*log(r2/r1)/(2*%pi*k1*L);// interface temperature of lagging,[C]

mprintf('\n (b) The interface temperature of the lagging is  =  %f C\n',t2);

//  There is some calculation mistake in the book so answer is not matching

//  End
