//Example 9.1
clc
disp("The differential amplifier is represented as shown in fig. 9.5.")
disp("(i)  CMRR = 100")
vd=300-240
disp(vd,"    Vd(in uV) = V1 - V2 = ")
vc=(300+240)/2
disp(vc,"    Vc(in uV) = V1+V2 / 2 =")
disp("CMRR = Ad / Ac")
ac=5000/100
disp(ac,"Therefore, Ac =")
format(6)
vo=((5000*60)+(50*270))*10^-3
disp(vo,"Therefore, Vo(in mV) = Ad*Vd + Ac*Vc =")
disp("(ii)  CMRR = 10^5")
ac=5000/(10^5)
disp(ac,"Therefore, Ac = Ad / CMRR =")
vo=((5000*60)+(0.05*270))*10^-3
format(9)
disp(vo,"Therefore, Vo(in mV) = Ad*Vd + Ac*Vc =")
disp("Ideally Ac must be zero and output should be only Ad*Vd which is 5000*60*10^-6 i.e. 300 mV. It can be seen that higher the value of CMRR, the output is almost proportional to the difference voltage Vd, rejecting the common mode signal. So ideal value of CMRR for a differential amplifier is infinity.")
