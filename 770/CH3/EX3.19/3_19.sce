clear;
clc;

//Example - 3.19
//Page number - 113
printf("Example - 3.19 and Page number - 113\n\n");


//Given
T_1 = 600;//[C] - Temperature at entry
P_1 = 15;//[MPa] - Pressure at entry
T_2 = 400;//[K] - Temperature at exit
P_2 = 100;//[kPa] - Pressure at exit
A_in = 0.045;//[metre square] - flow  in area
A_out = 0.31;//[metre square] - flow out area
m = 30;//[kg/s] - mass flow rate.

//At 15 MPa and 600 C,it has been reported in the book that the properties of steam are,
Vol_1 = 0.02491;//[m^(3)/kg] - Specific volume
H_1 = 3582.3;//[kJ/kg] - Enthalpy
// m = den*vel*A = (Vel*A)/Vol, substituting the values
vel_1 = (m*Vol_1)/A_in;//[m/s] - Velocity at point 1.
printf(" The inlet velocity is %f m/s\n",vel_1);

//At 100 MPa (saturated vapour),it has been reported in the book that the properties of steam are, T_sat = 99.63 C, and
Vol_vap_2 = 1.6940;//[m^(3)/kg] - specific volume of saturated vapour.
H_vap_2 = 2675.5;//[kJ/kg] - Enthalpy os saturated vapour.
vel_2 = (m*Vol_vap_2)/A_out;//[m/s] - Velocity at point 2.
printf(" The exit velocity is %f m/s\n",vel_2);

//From first law we get, q - w =delta_H + delta_V^(2)/2
//q = 0, therefore, -w = delta_H + delta_V^(2)/2
delta_H = H_vap_2 - H_1;//[kJ/kg] - change in enthalpy.
delta_V_square = (vel_2^(2) - vel_1^(2))/2;//[J/kg]
delta_V_square = delta_V_square*10^(-3);//[kJ/kg]
w = -(delta_H + delta_V_square);//[J/kg] 
W_net = w*m;//[kW]
W_net = W_net*10^(-3);//[MW] - power produced.
printf(" The power that can be produced by the turbine is %f MW",W_net);


