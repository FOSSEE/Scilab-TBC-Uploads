clear;
clc;
disp('Example 17.3');

// aim : To determine
// (a) the brake power
// (b) the brake specific fuel consumption
// (c) the indicated thermal efficiency
// (d) the energy balance, expressing the various items

// given values
t = 30;// duration of trial, [min]
N = 1750;// speed of engine, [rev/min]
T = 330;// brake torque, [Nm]
mf = 9.35;// fuel consumption, [kg]
CV = 42300;// calorific value of fuel, [kJ/kg]
cwc = 483;// jacket cooling water circulation, [kg]
Ti = 17;// inlet temperature, [C]
To = 77;// outlet  temperature, [C]
ma = 182;// air consumption, [kg]
Te = 486;// exhaust temperature, [C]
Ta = 17;// atmospheric temperature, [C]
n_mec = .83;// mechanical efficiency
c = 1.25;// mean specific heat capacity of exhaust gas, [kJ/kg K]
C = 4.18;// specific heat capacity, [kJ/kg K]

// solution
// (a)
bp = 2*%pi*N*T/60*10^-3;// brake power, [kW]
mprintf('\n (a) The Brake power is  =  %f  kW\n',bp);

// (b)
bsf = mf*2/bp;//brake specific fuel consumption, [kg/kWh]
mprintf('\n (b) The brake specific fuel consumption is  =  %f kg/kWh\n',bsf);

// (c)
ip = bp/n_mec;// indicated power, [kW]
ITE = ip/(2*mf*CV/3600);// indicated thermal efficiency
mprintf('\n (c) The indicated thermal efficiency is  =  %f percent\n',ITE*100);

// (d)
// taking  basis one minute 
ef = CV*mf/30;// energy from fuel, [kJ]
eb = bp*60;// energy to brake power,[kJ]
ec = cwc/30*C*(To-Ti);// energy to cooling water,[kJ]
ee = (ma+mf)/30*c*(Te-Ta);// energy to exhaust, [kJ]
es = ef-(eb+ec+ee);// energy to surrounding,etc,[kJ]

mprintf('\n (d) Energy from fuel is  =  %f kJ\n',ef);
mprintf('\n      Energy to brake power is  =  %f kJ\n',eb);
mprintf('\n      Energy to cooling water is  =  %f  kJ\n',ec);
mprintf('\n      Energy to exhaust is  =  %f  kJ\n',ee);
mprintf('\n      Energy to surrounding, etc is  =  %f kJ\n',es);
 
//  End
