
clear;
clc;
disp('Example 1.12');



//  Given values
V = 230; //  volatage, [volts]
I = 60; //  current, [amps]
n_gen = .95; //  efficiency of generator
n_eng = .92; //  efficiency of engine

//  solution

P_gen = V*I; //  Power delivered by generator, [W]
P_gen=P_gen*10^-3; //  [kW]

P_in_eng=P_gen/n_gen;//Power input from engine,[kW]

P_out_eng=P_in_eng/n_eng;//Power output from engine,[kW]

mprintf('\n The power output from the engine is  =  %f  kW\n',P_out_eng);

//  End
