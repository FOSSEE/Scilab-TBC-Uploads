clear;
clc;
disp('Example 17.4');

// aim : To determine
// (a) the indicated power of the engine
// (b) the mechanical efficiency of the engine

// given values
bp = 52;// brake power output, [kW]
bp1 = 40.5;// brake power of cylinder cut1, [kW]
bp2 = 40.2;// brake power of cylinder cut2, [kW]
bp3 = 40.1;// brake power of cylinder cut3, [kW]
bp4 = 40.6;// brake power of cylinder cut4, [kW]
bp5 = 40.7;// brake power of cylinder cut5, [kW]
bp6 = 40.0;// brake power of cylinder cut6, [kW]

// sollution
ip1 = bp-bp1;// indicated power of cylinder cut1, [kW]
ip2 = bp-bp2;// indicated power of cylinder cut2, [kW]
ip3 = bp-bp3;// indicated power of cylinder cut3, [kW]
ip4 = bp-bp4;// indicated power of cylinder cut4, [kW]
ip5 = bp-bp5;// indicated power of cylinder cut5, [kW]
ip6 = bp-bp6;// indicated power of cylinder cut6, [kW]

ip = ip1+ip2+ip3+ip4+ip5+ip6;// indicated power of engine,[kW]
mprintf('\n (a) The indicated power of the engine is  =  %f  kW\n',ip);

// (b)
n_mec = bp/ip;// mechanical efficiency
mprintf('\n (b) The mechanical  efficiency of the engine is  =  %f percent\n',n_mec*100);

// End
