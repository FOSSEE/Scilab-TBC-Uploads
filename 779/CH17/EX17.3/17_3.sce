M2 = 2.197; P2P0 = 0.0939; T2T0 = 0.5089;
P0 = 1000; T0 = 360; g = 1.4; R = 0.287; 
P2 = P2P0*P0;
T2 = T2T0*T0;
c2 = sqrt(g*R*T2*1000);
V2 = c2*M2;
// for air
P_P0 = 0.528; T_T0 = 0.833; // T_ == T*
P_ = P_P0*P0; T_ = T_T0*T0;
rho_ = P_/(R*T_);
V_ = sqrt(g*R*T_*1000);
At = 500e-06; // throat area
w = At*V_*rho_;
disp("When divergent section act as a nozzle")
disp("kg/s",w,"Maximum flow rate of air is")
disp("K",T2,"Static temperature is")
disp("kPa",P2,"Static Pressure is")
disp("m/s",V2,"Velocity at the exit from the nozzle is")
// Part (b)
Mb = 0.308; 
P2P0b = 0.936;
T2T0b = 0.9812;
P2b = P2P0b*P0;
T2b = T2T0b*T0;
c2b = sqrt(g*R*T2b*1000);
V2b = c2b*Mb; 
disp("When divergent section act as a diffuser")
disp("kg/s",w,"Maximum flow rate of air is")
disp("K",T2b,"Static temperature is")
disp("kPa",P2b,"Static Pressure is")
disp("m/s",V2b,"Velocity at the exit from the nozzle is")

 


