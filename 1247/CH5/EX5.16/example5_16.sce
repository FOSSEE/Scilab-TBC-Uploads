clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.16
// Page 238
printf("Example 5.16, Page 238 \n \n");

// solution

// basis liquifaction capacity = 0.116 kg/s
p1 = 101 // kPa
Ts1 = 239.15
lv1 = 288.13 // kJ/kg
p2 = 530 // kPa
Ts2 = 290.75 // K
lv2 = 252.93 // kJ/kg
// referring to table 5.3 and using eq 5.21
H1 = -39.246*(Ts2-Ts1)+1401.223*10^-3*(Ts2^2-Ts1^2)/2-6047.226*10^-6*(Ts2^3-Ts1^3)/3+8591.4*10^-9*(Ts2^4-Ts1^4)/4  // kJ/kmol
T3 = 313.15
H2 = [28.5463*(T3-Ts1)+23.8795*10^-3*(T3^2-Ts1^2)/2-21.3631*10^-6*(T3^3-Ts1^3)/3+6.4726*10^-9*(T3^4-Ts1^4)/4]/70.903  // kJ/kg
fi2 = .116*H2
Cl2evp = fi2/lv1  // kg/s
Cl2recy = Cl2evp/(1-.185)
R = Cl2recy/.116 // kg/kg fresh feed
// T4/T1 = (p2/p1)^[(gamma-1)/gamma]
gm = 1.355
p22 = 326.3
p21 = 101
T4 = Ts1*(p2/p1)^[(gm-1)/gm]
T5 = 313.15
fi3 = 1.88*10^-3*(343.1+91.6-26.2+2.5)  // kW
Fwater1 = fi3/(8*4.1868)  // kg/s
// similarly
T6 = 379.9
fi4 = 1.88*10^-3*[28.5463*(T6-T5)+23.8795*10^-3*(T6^2-T5^2)/2-21.3631*10^-6*(T6^3-T5^3)/3+6.4726*10^-9*(T6^4-T5^4)/4]  // kW
Fwater2 = fi4/(8*4.1868)  // kg/s
Wreq = Fwater1+Fwater2
fi5 = 1.88*10^-3*[28.5463*(T5-Ts2)+23.8795*10^-3*(T5^2-Ts2^2)/2-21.3631*10^-6*(T5^3-Ts2^3)/3+6.4726*10^-9*(T5^4-Ts2^4)/4] +.1333*252.93 // kW
printf(" (a) \n \n Recycle ratio = "+string(R)+" kg Cl2/kg fresh feed \n \n \n (b) \n \n Cooling water required at \n interface = "+string(Fwater1)+" kg/s \n after cooler = "+string(Wreq)+" kg/s \n \n \n (c) \n \n Refrigiration load of chiller = "+string(fi5)+" kW.")
