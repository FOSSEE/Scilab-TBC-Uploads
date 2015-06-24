clear;
clc;
disp('Example 17.5');

// aim : To determine
// the brake power,indicated power and mechanicl efficiency
// draw up an energy balance and as % age of the energy supplied

// given values
N = 50;// speed, [rev/s]
BL = 267;// break load.,[N]
BL1 = 178;// break load of cylinder cut1, [N]
BL2 = 187;// break load of cylinder cut2, [N]
BL3 = 182;// break load of cylinder cut3, [N]
BL4 = 182;// break load of cylinder cut4, [N]

FC = .568/130;// fuel consumption, [L/s]
s = .72;// specific gravity of fuel
CV = 43000;// calorific value of fuel, [kJ/kg]

Te = 760;// exhaust temperature, [C]
c = 1.015;// specific heat capacity of exhaust gas, [kJ/kg K]
Ti = 18;// cooling water inlet temperature, [C]
To = 56;// cooling water outlet temperature, [C]
mw = .28;// cooling water flow rate, [kg/s]
Ta = 21;// ambient tempearture, [C]
C = 4.18;// specific heat capacity of cooling water, [kJ/kg K]

// solution
bp = BL*N/455;// brake power of engine, [kW]
bp1 = BL1*N/455;// brake power of cylinder cut1, [kW]
i1 = bp-bp1;// indicated power of cylinder cut1, [kW]
bp2 = BL2*N/455;// brake power of cylinder cut2, [kW]
i2 = bp-bp2;// indicated power of cylinder cut2, [kW]
bp3 = BL3*N/455;// brake power of cylinder cut3, [kW]
i3 = bp-bp3;// indicated power of cylinder cut3, [kW]
bp4 = BL4*N/455;// brake power of cylinder cut4, [kW]
i4 = bp-bp4;// indicated power of cylinder cut4, [kW]

ip = i1+i2+i3+i4;// indicated power of engine, [kW]
n_mec = bp/ip;// mechanical efficiency

mprintf('\n The Brake power is  =  %f kW\n',bp);
mprintf('\n The Indicated power is  =  %f kW\n',ip);
mprintf('\n The mechanical efficiency is  =  %f percent\n',n_mec*100);

mf = FC*s;// mass of fuel/s, [kg]
ef = CV*mf;// energy from fuel/s, [kJ]
me = 15*mf;// mass of exhaust/s,[kg],(given in condition)
ee = me*c*(Te-Ta);// energy to exhaust/s,[kJ]
ec = mw*C*(To-Ti);// energy to cooling water/s,[kJ]
es = ef-(ee+ec+bp);// energy to surrounding,etc/s,[kJ]

disp('Energy can be tabulated as :-');
disp('----------------------------------------------------------------------------------------------------');
disp('                                                  kJ/s                           Percentage   ')
disp('----------------------------------------------------------------------------------------------------');
mprintf('\n Energy from fuel                         %f                 %f\n Energy to brake power                 %f                   %f\n Energy to exhaust                       %f                   %f\n Energy to coolant                        %f                   %f\n Energy to suroundings,etc.           %f                  %f\n',ef,ef/ef*100,bp,bp/ef*100,ee,ee/ef*100,ec,ec/ef*100,es,es/ef*100);

// there is minor variation in the result reported in the book
//  End
