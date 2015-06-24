clc
//Chapter6
//Ex_10
//Given
V_GS=-1.5 //in Volts
V_GS_off=-5 //in Volts
I_DSS=10*10^-3 // in A
R_D=2000 // in ohms
I_DS=I_DSS*(1-(V_GS/V_GS_off))^2 // in A
gm=-2*sqrt(I_DSS*I_DS)/V_GS_off
Av=-gm*R_D
disp(Av,"voltage amplification for small signal is")
