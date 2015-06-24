//example6.4
clc
disp("a) The drop across the shunt is same as drop across the coil.")
disp("Therefore, [(I_sh)*(R_sh)]=400 mV")
i=(400*10^-3)/0.01
disp(i,"Therefore, I_sh(in A)=(400*10^-3)/0.01= ")
disp("b) The voltage across shunt for shunted current of 50 A is,")
v=50*0.01
disp(v,"V_sh(in V)=[(I_sh)*(R_sh)]=50*0.01=")
disp("For this voltage the meter should give full scale deflection. In first case, the current through meter for full deflection was,")
i=(400*10^-3)/750
disp(i,"I_m(in A)=(400mV)/(R_m)=(400*10^-3)/750=")
disp("The same I_m must flow for new voltage across the meter of 0.5 V")
disp("Therefore, [(I_m)*(R_m)'']=0.5")
disp("Therefore, [(5.33*10^-4)*(R_m)'']=0.5")
r=0.5/(5.33*10^-4)
disp(r,"Therefore, (R_m'')[in ohm]=")
disp("This is the resistance of the meter required for 50 A shunted current to give full scale defection.")
