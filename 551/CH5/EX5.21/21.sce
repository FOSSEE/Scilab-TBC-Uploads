clc
T0=273; //K
T1=673; //K
T2=298; //K
m_w=10; //kg
T3=323; //K
c_pw=4186; //kJ/kg.K
disp("Let C=mi*cpi")
C=m_w*c_pw*(T3-T2)/(T1-T3);

S_iT1=C*log(T1/T0); // Entropy of iron at 673 K
S_wT2=m_w*c_pw*log(T2/T0); //Entropy of water at 298 K
S_iT3=C*log(T3/T0); //Entropy of iron at 323 K
S_wT3=m_w*c_pw*log(T3/T0); //Entropy of water at 323 K

dS_i=S_iT3 - S_iT1;
dS_w=S_wT3 - S_wT2; 
dS_net=dS_i + dS_w

disp("Since dS>0, process is irreversible")