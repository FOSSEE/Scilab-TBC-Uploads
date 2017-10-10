//clear//
//Caption:
//Example11.11
//page381
clc;
clear
close;
Rg = 50; //series resistance with battery in ohms
Zo = Rg; //characteristic impedance
RL = 25; //load resistance
Vo = 10; //battery voltage in volts
V1_S = (Rg/(Zo+Rg))*Vo;
T = (RL-Zo)/(RL+Zo);
V1_R = T*V1_S;
I1_S = V1_S/Zo;
I1_R = -V1_R/Zo;
IB = Vo/(Zo+RL);
VL = Vo*(RL/(Rg+RL));
disp(V1_S,'Voltage at source in volts V1plus =')
disp(V1_R,'Voltage returns to battery in volts V1minus=')
disp(I1_S,'Current at battery in amps I1plus=')
disp(I1_R,'Current at battery in amps I1minus=')
disp(IB,'Steady state current through battery in amps IB=')
disp(VL,'Steady state load voltage in volts VL=')
//Result
//Voltage at source in volts V1plus =   
//     5.  
//Voltage returns to battery in volts V1minus=   
//  - 1.6666667  
//Current at battery in amps I1plus=   
//    0.1  
//Current at battery in amps I1minus=   
//    0.0333333  
//Steady state current through battery in amps IB=   
//    0.1333333  
//Steady state load voltage in volts VL=   
//    3.3333333