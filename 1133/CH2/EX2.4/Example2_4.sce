//Example 2.4
clc
format(6)
disp("It is necessary to analyze each network to determine the critical frequency of the amplifier")
disp("(a) Input RC network")
fc1=1/(2*%pi*[680+1031.7]*(0.1*10^-6))
disp(fc1,"       f_c(input)(in Hz) = 1 / 2*pi*[RS+(R1||R2||hie)]C1 =")  // in Hz
disp("(b) Output RC network")
format(7)
fc2=1/(2*%pi*((2.2+10)*10^3)*(0.1*10^-6))
disp(fc2,"       f_c(output)(in Hz) = 1 / 2*pi*(RC+RL)*C2 =")  // in Hz
disp("(c) Bypass RC network")
rth=((68*22*0.680)/((22*0.680)+(68*0.680)+(68*22)))*10^3
disp(rth,"R_th(in ohm) = R1 || R2 || RS =")
format(6)
fc3=1/(2*%pi*17.23*10*10^-6)
disp(fc3,"       f_c(bypass)(in Hz) = 1 / 2*pi*[(R_th+hie/beta)||RE]*CE")
disp("We have calculated all the three critical frequencies :")
disp("(a) fc(input) = 929.8 Hz")
disp("(b) fc(output) = 130.45 Hz")
disp("(c) fc(bypass) = 923.7 Hz")
