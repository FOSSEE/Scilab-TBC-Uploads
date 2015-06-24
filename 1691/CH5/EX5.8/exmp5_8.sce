//Example 5.8
clc
disp("(i) Resonant frequency:")
fr=(1/(2*%pi*sqrt(20*500*10^-18)))*10^-6
format(5)
disp(fr,"f_r(MHz) = 1 / 2*pi*sqrt(LC) =")
disp("(ii) We know that")
disp("Q_r = R_p / omega_r*L")
rp=30*2*%pi*1.59*20
format(5)
disp(rp,"Therefore,  Impedance of tuned circuit R_p = Q_r * omega_r * L =")
disp("(iii) Voltage gain of stage A_v,")
av=(-50*((5994*1500)/(5994+1500)))/200
format(4)
disp(av,"A_v = A_I*R''_L / R''_i =")
