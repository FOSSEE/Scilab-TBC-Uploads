clear;
clc;
funcprot(0);

//given data
c1 = 300;//velocity in m/s
p01 = 200;//stagnation pressure in kPa
T01 = 200;//stagnation temperature in degC
c2 = 50;//exit velocity in m/s
eff_d = 0.9;//diffuser efficiency 
 
gamma = 1.4;
R = 287;//in J/(kg.K)
Cp = 1005;//in J/(kg.K)

//Calculations
T01 = T01+273;//stagnation temperature in K
T1 = T01*(1-(c1^2)/(2*Cp*T01));
M1 = c1/sqrt(gamma*R*T1);
T2 = T01*(1-(c2^2)/(2*Cp*T01))
T2s_T1 = eff_d*(T2/T1 -1)+1;
p2_p1 = (T2s_T1)^(gamma/(gamma-1));
p01_p1 = (T01/T1)^(gamma/(gamma-1));
p1 = p01/p01_p1;
p2 = p2_p1*p1;
ds = Cp*log(T2/T1) - R*log(p2/p1);

//Results
printf('(i)The static temperature at inlet of the diffuser = %.1f K',T1);
printf('\n The static temperature at outlet of the diffuser = %.1f K',T2);
printf('\n The inlet Mach number = %.4f',M1);
printf('\n (ii) The static pressure at diffuser inlet = %.1f kPa',p1);
printf('\n (iii) The increase in entropy caused by the diffusion process = %.1f J/kg.K',ds);

//there are small errors in the answers given in textbook
