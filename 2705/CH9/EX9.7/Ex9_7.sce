clear;
clc;
disp('Example 9.7');

//  aim : To determine  
//  the heat loss per hour and the surface temperature of the lagging

//  Given values
r1 = 75*10^-3;// External radiou of the pipe, [m]
t_l1 = 40*10^-3;// Thickness of lagging1, [m]
t_l2 = t_l1;
k1 = .07;// thermal conductivity of lagging1, [W/m K]
k2 = .1;// thermal conductivity of lagging2, [W/m K]
Us = 7;// surface transfer coefficient for outer surface, [W/m^2 K]
L = 50;// length of the pipe, [m]
ta = 27;// ambient temperature, [C]
P = 3.6;// wet steam pressure, [MN/m^2]

//  solution
//  from steam table saturation temperature of the steam at given pressure is,
t1 =  244.2;// [C]
r2 = r1+t_l1;// radious of pipe with lagging1,[m]
r3 = r2+t_l2;// radious of pipe with both the lagging, [m]

R1 = log(r2/r1)/(2*%pi*L*k1);// resistance due to lagging1,[C/W]
R2 = log(r3/r2)/(2*%pi*L*k2);// resistance due to lagging2,[C/W]
R3 = 1/(Us*2*%pi*r3*L);// ambient resistance, [C/W]

//  hence overall resistance is,
Req = R1+R2+R3;// [C/W]
tdf = t1-ta;// temperature driving force, [C]
Q_dot = tdf/Req;// rate of heat loss, [W]
//  so heat loss per hour is,
Q = Q_dot*3600*10^-3;// heat loss per hour, [kJ]

//  using eqn [3]
t3 = ta+Q_dot*R3;// surface temperature of the lagging, [C]

mprintf('\n The heat loss per hour is  =  %f  kJ\n',Q);
mprintf('\n The surface temperature of the lagging is  =  %f C\n',t3);

//  there is minor variation in the answer

//  End
