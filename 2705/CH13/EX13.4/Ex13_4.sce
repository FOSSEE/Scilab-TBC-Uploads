clear;
clc;
disp('Example 13.4');

// aim : To determine
// (a) the power output of the stage
// (b) the specific enthalpy drop in the stage
// (c) the percentage increase in relative velocity in the moving blades due to expansion in the bladse

// given values
N = 50;// speed, [m/s]
d = 1;// blade ring diameter, [m]
nai = 50;// nozzle inlet angle, [degree]
nae = 30;// nozzle exit angle, [degree]
m_dot = 600000;// steam flow rate, [kg/h]
se = .85;// stage efficiency

// solution
// (a)
U = %pi*d*N;// mean blade speed, [m/s]
// from Fig. 13.17(diagram 13.4)
Cwi_plus_Cwe = 444;// change in whirl speed, [m/s]
P = m_dot*U*Cwi_plus_Cwe/3600;// power output of the stage, [W]
mprintf('\n (a) The power output of the stage is  =  %f MW\n',P*10^-6);

// (b)
h = U*Cwi_plus_Cwe/se;// specific enthalpy,[J/kg]
mprintf('\n (b) The specific enthalpy drop in the stage is  =  %f  kJ/kg\n ',h*10^-3);

// (c)
// again from diagram
Cri = 224;// [m/s]
Cre = 341;// [m/s]
Iir = (Cre-Cri)/Cri;// increase in relative velocity
mprintf('\n (c) The increase in relative velocity is  =  %f  percent\n',Iir*100);

//  End
