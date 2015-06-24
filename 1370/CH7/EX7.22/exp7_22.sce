//example7.22
clc
disp("R_L =5 k-ohm=5*10^3 ohm, N1:N2 is 2:1")
disp("E_p = 460V RMS value")
disp("Therefore, (E_s)/(E_p)=N2/N1=1/2")
disp("Therefore, E_s = (E_p)/2 = 230 V")
e=230*sqrt(2)
format(8)
disp(e,"Therefore, E_sm(in V)=")
disp("Now, (I_DC)=(2*I_m)/pi      where (I_m)=(E_sm)/(R_L) neglecting R_f")
i=(2*325.269)/(%pi*5*10^3)
format(8)
disp(i,"Therefore, (I_DC)[in A]=(2*E_sm)/(pi*R_L)=")
d=41.41*5
format(8)
disp(d,"DC load voltage E_DC(in V) = (I_DC)*(R_L) = ")
disp("Ripple voltage = ripple factor*(V_DC)")
disp("Ripple factor of bridge rectifier is 0.482")
r=0.482*207.072
format(5)
disp(r,"Therefore, Ripple factor = ")
disp("PIV rating of each diode = (E_sm) for bridge rectifier = 325.27 V")
