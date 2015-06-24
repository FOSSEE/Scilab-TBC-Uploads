// Example 14.5 To determine the maximum power dissipated 
// Consider a BJT with following specifications
T_Jmax=150; // (degree celcius)
T_A=50; // (degree celcius)

// 14.5a
theta_JA=62.5; // (degree celcius/W)
P_Dmax=(T_Jmax-T_A)/theta_JA;
disp(P_Dmax,"The maximum power (W) that can be dissipated safely by the transistor when operated in free air")

//14.5b
theta_CS=0.5; // (degree celcius/W)
theta_SA=4; // (degree celcius/W)
theta_JC=3.12; // (degree celcius/W)
theta_JA=theta_JC+theta_CS+theta_SA;
P_Dmax=(T_Jmax-T_A)/theta_JA
disp(P_Dmax,"The maximum power (W) that can be dissipated safely by the transistor when operated at an ambient temperature of 50 degree celcius but with a heat sink for which theta_CS= 0.5 (degree celcius/W) and theta_SA = 4 (degree celcius/W) (W)")

// 14.5c
theta_CA=0 // since infinite heat sink
P_Dmax=(T_Jmax-T_A)/theta_JC;
disp(P_Dmax,"The maximum power (W) that can be dissipated safely if an infinite heat sink is used and T_A=50 (degree celcius)")