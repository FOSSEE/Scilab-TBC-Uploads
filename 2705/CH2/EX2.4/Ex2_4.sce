clear;
clc;
disp('Example 2.4');



//  Given values
m_dot = 4; //  fluid flow rate, [kg/s]
Q = -40;  //  Heat loss to the surrounding, [kJ/kg]

//  At inlet 
P1 = 600;  // pressure  ,[kn/m^2]
C1 = 220;  // velocity  ,[m/s]
u1 = 2200;  // internal energy,  [kJ/kg]
v1 = .42; // specific volume, [m^3/kg]

//  At outlet
P2 = 150; // pressure, [kN/m^2]
C2 = 145;  // velocity,  [m/s]
u2 = 1650;  // internal energy,  [kJ/kg]
v2 = 1.5;  // specific volume,  [m^3/kg]

//  solution
//  for steady flow energy equation for the open system is given by
//  u1+P1*v1+C1^2/2+Q=u2+P2*v2+C2^2/2+W
//  hence

W = (u1-u2)+(P1*v1-P2*v2)+(C1^2/2-C2^2/2)*10^-3+Q; // [kJ/kg]

mprintf('\n workdone is, W =  %f kJ/kg ',W);

if(W&gt;0)
      disp('Since W&gt;0, so Power is output from the system')
else
   disp('Since &lt;0, so Power is input to the system')
end
 
//  Hence

P_out = W*m_dot; // power out put from the system, [kW]
mprintf('\n The power output from the system is  =  %f  kW \n',P_out);

//  End
