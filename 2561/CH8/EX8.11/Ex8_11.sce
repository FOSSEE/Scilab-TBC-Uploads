//Ex8_11
clc
R=10*10^(3)
disp("R= "+string(R)+ " ohm")  // resistance
R1=10*10^(3)
disp("R1= "+string(R1)+ " ohm")  // resistance
C=0.01*10^(-6) //  value of capacitor
disp("C="+string(C)+" farad")
R1_ratio_K=2.5*10^(3)
disp("R1_ratio_K= "+string(R1_ratio_K)+ " ohm")  // resistance
R2=5*10^(3)
disp("R= "+string(R)+ " ohm")  // resistance
alpha_R2=250
disp("alpha_R2= "+string(alpha_R2)+ " ohm")  // resistance
alpha=alpha_R2/R2
disp("alpha=alpha_R2/R2= "+string(alpha))  // Damping factor
Q=1/alpha
disp("Q= 1/alpha="+string(Q))// Quality factor
omega_o=1/(R*C)
disp("omega_o=1/(R*C)= "+string(omega_o)+" radian")// centre angular frequency
BW=omega_o/Q
disp("Bandwidth=omega_o/Q= "+string(BW)+" radian")// Upper cut-off frequency or 3-dB bandwidth
K=R1/(R1_ratio_K)// Pass band gain for lPF and HPF of state variable filter
disp("K=R1/(R1_ratio_K)= "+string(K))
Gm=K/alpha// Pass band gain of state variable filter
disp("center frequency gain for BPF, K/alpha=K*Q= "+string(Gm)) // Centre frequency gain for BP filter

