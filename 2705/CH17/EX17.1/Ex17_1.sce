clear;
clc;
disp('Example 17.1');

// aim : To determine
// the indicated and brake output and the mechanicl efficiency
// draw up an overall energy balance and as % age

// given values
h = 21;// height of indicator diagram, [mm]
ic = 27;// indicator calibration, [kN/m^2 per mm]
sv = 14*10^-3;// swept volume of the cylinder;,[m^3]
N = 6.6;// speed of engine, [rev/s]
ebl = 77;// effective brake load, [kg]
ebr = .7;// effective brake radious, [m]
fc = .002;// fuel consumption, [kg/s]
CV = 44000;// calorific value of fuel, [kJ/kg]
cwc = .15;// cooling water circulation, [kg/s]
Ti = 38;// cooling water inlet temperature, [C]
To = 71;// cooling water outlet temperature, [C]
c = 4.18;// specific heat capacity of water, [kJ/kg]
eeg = 33.6;// energy to exhaust gases, [kJ/s]
g = 9.81;// gravitational acceleration, [m/s^2]

// solution
PM = ic*h;// mean effective pressure, [kN/m^2]
LA = sv;// swept volume of the cylinder, [m^3]
ip = PM*LA*N/2;// indicated power,[kW]
T = ebl*g*ebr;// torque, [N*m]
bp = 2*%pi*N*T;// brake power, [W]
n_mech = bp/ip*10^-3;// mechanical efficiency
mprintf('\n The Indicated power is  =  %f kW\n',ip);
mprintf('\n The Brake power is  =  %f  kW\n',bp*10^-3);
mprintf('\n The mechanical efficiency is  =  %f  percent\n',n_mech);

ef = CV*fc;// energy from fuel, [kJ/s]
eb = bp*10^-3;// energy to brake power,[kJ/s]
ec = cwc*c*(To-Ti);// energy to coolant,[kJ/s]
es = ef-(eb+ec+eeg);// energy to surrounding,[kJ/s]

disp('Energy can be tabulated as :-');
disp('----------------------------------------------------------------------------------------------------');
disp('                                                  kJ/s                           Percentage   ')
disp('----------------------------------------------------------------------------------------------------');
mprintf('\n Energy from fuel                         %f                   %f\n Energy to brake power                %f                    %f\n Energy to coolant                       %f                    %f\n Energy to exhaust                      %f                    %f\n Energy to suroundings,etc.         %f                    %f\n',ef,ef/ef*100,eb,eb/ef*100,ec,ec/ef*100,eeg,eeg/ef*100,es,es/ef*100);

//  End
