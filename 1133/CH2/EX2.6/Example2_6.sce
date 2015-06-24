//Example 2.6
clc
disp("Before calculating critical frequencies it is necessary to calculate mid frequency gain of the given circuit. This is required tocalculate C_in(miller) and C_out(miller)")
disp("       Av = -hfe*Ro / Ri")
disp("where  Ri = hie || R1 || R2")
disp("and    Ro = RC || RL")
format(6)
av=(-100*1.8)/1.032
disp(av,"Therefore,  Av = -hfe(RC||RL) / hie||R1||R2 =")
disp("Negative sign indicates 180 degree shift between input and output")
format(7)
cin=(4*(174.4+1))*10^-3  // in nF
disp(cin,"    C_in(miller)(in nF) = C_bc*(Av+1) =")
cout=(4*175.4)/(174.4)  // in pF
format(4)
disp(cout,"    C_out(miller)(in pF) = C_bc*(Av+1) / Av =")
disp("We now analyze input and output network for critical frequency.")
format(8)
fci=(1/(2*%pi*410*0.7216*10^-9))*10^-3  // in kHz
disp(fci,"    f_c(input)(in kHz) = 1 / 2*pi*(Rs||R1||R2||hie)*(C_be+C_in(miller)) =")
format(5)
fco=(1/(2*%pi*((22*10^6)/(12.2*10^3))*(4*10^-12)))*10^-6  // in MHz
disp(fco,"    f_c(output)(in MHz) = 1 / 2*pi*(RC||RL)*C_out(miller) =")
disp("We have calculated both the critical frequencies")
disp("(a) f_c(input) = 537.947 kHz")
disp("(b) f_c(output) = 22.1 MHz")
